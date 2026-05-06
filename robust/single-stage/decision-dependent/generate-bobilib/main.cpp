#include <iostream>
#include <list>
#include <filesystem>
#include <fstream>

#include "idol/modeling.h"
#include "idol/bilevel/modeling/read_from_file.h"
#include "idol/general/utils/Set.h"
#include "idol/mixed-integer/optimizers/wrappers/Gurobi/Gurobi.h"
#include "idol/robust/modeling/Description.h"

namespace fs = std::filesystem;
using namespace idol;

double angle(const LinExpr<Var>& t_a, const LinExpr<Var>& t_b) {

    double dot_product = 0.0;
    double norm_a = 0.0;
    double norm_b = 0.0;

    Set<Var> vars;
    for (const auto& [var, coeff] : t_a) { vars.emplace(var); }
    for (const auto& [var, coeff] : t_b) { vars.emplace(var); }

    for (const auto& var : vars) {
        const double a = t_a.get(var);
        const double b = t_b.get(var);
        dot_product += a * b;
        norm_a += a * a;
        norm_b += b * b;
    }

    return dot_product / (std::sqrt(norm_a) * std::sqrt(norm_b));
}

void generate_instance(const std::string& t_filename, const std::string& t_folder) {

    const auto aux = t_filename.substr(0, t_filename.size() - 7) + ".aux";

    Env env;
    auto model = Model::read_from_file(env, t_filename);
    const auto description = Bilevel::read_bilevel_description(model, aux);

    const auto leader_obj = model.get_obj_expr().affine().linear();
    const auto follower_obj = description.lower_level_obj().affine().linear();

    for (const auto& var : model.vars()) {
        if (is_neg_inf(model.get_var_lb(var)) || is_pos_inf(model.get_var_ub(var))) {
            return;
        }
    }

    // Check binary or integer linking constraints
    bool all_are_binary = true;
    for (const auto& ctr : model.ctrs()) {
        if (description.is_upper(ctr)) {
            continue;
        }
        for (const auto& [var, coeff] : model.get_ctr_row(ctr)) {
            if (description.is_upper(var) && model.get_var_type(var) != Binary) {
                all_are_binary = false;
                break;
            }
        }
    }

    const auto instance_name = fs::path(t_filename).filename().stem().stem().string();
    const auto dest_folder = t_folder + "/" + (all_are_binary ? "BOBILIB-BINARY" : "BOBILIB-INTEGER") + "/" + instance_name;

    fs::create_directories(dest_folder);

    // Create deterministic problem
    Model deterministic = model.copy();

    // Create uncertainty set
    Model uncertainty_set(env);
    Map<Var, Var> vars;
    for (const auto& ctr : model.ctrs()) {
        if (description.is_upper(ctr)) {
            continue;
        }
        LinExpr new_row;
        for (const auto& [var, coeff] : model.get_ctr_row(ctr)) {
            if (description.is_upper(var)) {
                if (!uncertainty_set.has(var)) {
                    uncertainty_set.add(var);
                }
                new_row += coeff * var;
            } else {
                auto it = vars.find(var);
                if (it == vars.end()) {
                    const auto lb = model.get_var_lb(var);
                    const auto ub = model.get_var_ub(var);
                    const auto type = model.get_var_type(var);
                    const double obj = description.lower_level_obj().affine().linear().get(var);
                    const auto& copy = uncertainty_set.add_var(lb, ub, type, obj, "__copy_" + var.name());
                    auto result= vars.emplace(var, copy);
                    it = result.first;
                }
                new_row += coeff * it->second;
            }

        }
        const auto type = model.get_ctr_type(ctr);
        const auto rhs = model.get_ctr_rhs(ctr);
        uncertainty_set.add(ctr, TempCtr(std::move(new_row), type, rhs));
    }

    Robust::Description robust_description(uncertainty_set);
    const auto obj = deterministic.add_ctr(description.lower_level_obj().affine().linear() <= 0.);
    robust_description.set_uncertain_rhs(obj, uncertainty_set.get_obj_expr().affine().linear());
    uncertainty_set.set_obj_expr(0.);

    // Write to files
    deterministic.use(Gurobi());
    deterministic.write(dest_folder + "/model.lp");

    uncertainty_set.use(Gurobi());
    uncertainty_set.write(dest_folder + "/uncertainty.lp");

    std::ofstream file(dest_folder + "/uncertainty.par");
    assert(file.is_open());
    file << robust_description;
    file.close();

}

std::list<std::string> get_bobilib_instances(const std::string& t_folder) {

    std::list<std::string> result;

    for (const auto& entry : fs::recursive_directory_iterator(t_folder)) {

        if (!entry.is_regular_file()) continue;

        const std::string filename = entry.path().filename().string();

        if (filename.size() >= 7 && filename.substr(filename.size() - 7) == ".mps.gz") {

            result.push_back(entry.path());

        }

    }

    return result;
}

int main(int t_argc, const char** t_argv) {

    if (t_argc != 3) {
        throw std::invalid_argument("Expected two arguments: <BOBILIB_INSTANCES> <DESTINATION_FOLDER>");
    }

    const std::string boblib_folder = t_argv[1];
    const std::string destination_folder = t_argv[2];

    const auto mps_files = get_bobilib_instances(boblib_folder);

    for (const auto& mps_file : mps_files) {
        generate_instance(mps_file, destination_folder);
    }

    return 0;
}