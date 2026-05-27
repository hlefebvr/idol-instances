//
// Created by Henri on 27/05/2026.
//
#include <filesystem>
#include <fstream>
#include <iostream>
#include <unordered_set>
#include <idol/modeling.h>

#include "../to_files.h"
#include "../../../cmake-build-debug/_deps/idol-src/bin/robust.h"
#include "idol/robust/modeling/Description.h"

using namespace idol;

int main(int t_argc, const char** t_argv) {


    if (t_argc != 3) {
        std::cerr << "Usage: " << t_argv[0] << " <src_folder> <destination_folder>\n";
        return 1;
    }

    const std::string src_folder = t_argv[1];
    const std::string destination_folder = t_argv[2];
    Env env;

    // Get instance names
    std::unordered_set<std::string> instance_names;
    for (const auto& entry : std::filesystem::directory_iterator(src_folder)) {
        instance_names.insert(entry.path().filename().stem());
    }

    // Generate instances
    for (const auto& instance_name : instance_names) {
        const auto base_path = src_folder + "/" + instance_name;
        const auto dest_folder = destination_folder + "/" + instance_name;
        const auto mps_file = base_path + ".mps";

        auto model = Model::read_from_file(env, mps_file);
        auto uncertainty_set = model.copy();

        std::list<Ctr> ctrs_to_remove_from_model, ctrs_to_remove_from_uncertainty_set;
        std::list<Var> vars_to_remove_from_model, vars_to_remove_from_uncertainty_set;
        Map<Var, Var> y_to_u;
        for (const auto& ctr : model.ctrs()) {
            if (!ctr.name().starts_with("flow_")) {
                ctrs_to_remove_from_model.push_back(ctr);
            }
            if (!ctr.name().starts_with("primal_")) {
                ctrs_to_remove_from_uncertainty_set.push_back(ctr);
            }
        }
        for (const auto& var : model.vars()) {
            if (var.name().starts_with("r")) {
                vars_to_remove_from_model.push_back(var);
                vars_to_remove_from_uncertainty_set.push_back(var);
            } else if (var.name().starts_with("u")) {
                vars_to_remove_from_model.push_back(var);
            }
        }
        for (const auto& ctr : ctrs_to_remove_from_model) { model.remove(ctr); }
        for (const auto& var : vars_to_remove_from_model) { model.remove(var); }
        for (const auto& ctr : ctrs_to_remove_from_uncertainty_set) { uncertainty_set.remove(ctr); }
        for (const auto& var : vars_to_remove_from_uncertainty_set) { uncertainty_set.remove(var); }
        uncertainty_set.set_obj_expr(0.);

        Robust::Description robust_description(uncertainty_set);

        for (const auto& var : model.vars()) {
            auto unc_name = var.name();
            unc_name[0] = 'u';
            for (const auto& unc_var : uncertainty_set.vars()) {
                if (unc_var.name() == unc_name) {
                    robust_description.set_uncertain_obj(var, .1 * model.get_var_obj(var) * unc_var);
                    break;
                }
            }
        }

        std::filesystem::create_directories(dest_folder + "/models/uncertain_obj");
        std::filesystem::create_directories(dest_folder + "/uncertainty_sets");
        write_to_file(model, dest_folder + "/models/uncertain_obj/model");
        Robust::write_par_file(robust_description, dest_folder + "/models/uncertain_obj/uncertainty.par");
        write_to_file(uncertainty_set, dest_folder + "/uncertainty_sets/discrete_knapsack");

    }


    return 0;
}
