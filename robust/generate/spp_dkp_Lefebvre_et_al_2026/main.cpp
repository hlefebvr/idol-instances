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

std::pair<Model, Robust::Description> create_uncertain_obj_model(const Model& t_model, const std::string& t_dest_folder) {

    auto deterministic_model = t_model.copy();
    auto uncertainty_set = t_model.copy();

    for (const auto& ctr : t_model.ctrs()) {
        if (!ctr.name().starts_with("flow_")) {
            deterministic_model.remove(ctr);
        }
        if (!ctr.name().starts_with("primal_")) {
            uncertainty_set.remove(ctr);
        }
    }
    for (const auto& var : t_model.vars()) {
        if (var.name().starts_with("r")) {
            deterministic_model.remove(var);
            uncertainty_set.remove(var);
        } else if (var.name().starts_with("u")) {
            deterministic_model.remove(var);
        }
    }
    uncertainty_set.set_obj_expr(0.);

    Robust::Description robust_description(uncertainty_set);

    for (const auto& var : deterministic_model.vars()) {
        auto unc_name = var.name();
        unc_name[0] = 'u';
        for (const auto& unc_var : uncertainty_set.vars()) {
            if (unc_var.name() == unc_name) {
                robust_description.set_uncertain_obj(var, .1 * deterministic_model.get_var_obj(var) * unc_var);
                break;
            }
        }
    }

    std::filesystem::create_directories(t_dest_folder + "/models/uncertain_obj");
    std::filesystem::create_directories(t_dest_folder + "/uncertainty_sets");
    write_to_file(deterministic_model, t_dest_folder + "/models/uncertain_obj/model");
    Robust::write_par_file(robust_description, t_dest_folder + "/models/uncertain_obj/uncertainty.par");
    write_to_file(uncertainty_set, t_dest_folder + "/uncertainty_sets/discrete_knapsack");

    return {
        std::move(deterministic_model),
        std::move(robust_description)
    };
}

std::pair<Model, Robust::Description> create_uncertain_ctr_model(const Model& t_model, const std::string& t_dest_folder) {

    auto deterministic_model = t_model.copy();
    auto uncertainty_set = t_model.copy();

    for (const auto& ctr : t_model.ctrs()) {
        if (!ctr.name().starts_with("flow_")) {
            deterministic_model.remove(ctr);
        }
        if (!ctr.name().starts_with("primal_")) {
            uncertainty_set.remove(ctr);
        }
    }
    for (const auto& var : t_model.vars()) {
        if (var.name().starts_with("r")) {
            deterministic_model.remove(var);
            uncertainty_set.remove(var);
        } else if (var.name().starts_with("u")) {
            deterministic_model.remove(var);
        }
    }
    uncertainty_set.set_obj_expr(0.);

    double UB = idol_Sum(var, t_model.vars(), 1.1 * t_model.get_var_obj(var));

    const auto epigraph = deterministic_model.add_var(0, UB, Continuous, 0, "z");
    const auto c = deterministic_model.add_ctr(epigraph >= deterministic_model.get_obj_expr().affine().linear());

    Robust::Description robust_description(uncertainty_set);

    for (const auto& var : deterministic_model.vars()) {
        auto unc_name = var.name();
        unc_name[0] = 'u';
        for (const auto& unc_var : uncertainty_set.vars()) {
            if (unc_var.name() == unc_name) {
                robust_description.set_uncertain_mat_coeff(c, var, .1 * deterministic_model.get_var_obj(var) * unc_var);
                break;
            }
        }
    }
    deterministic_model.set_obj_expr(epigraph);

    std::filesystem::create_directories(t_dest_folder + "/models/uncertain_ctr");
    std::filesystem::create_directories(t_dest_folder + "/uncertainty_sets");
    write_to_file(deterministic_model, t_dest_folder + "/models/uncertain_ctr/model");
    Robust::write_par_file(robust_description, t_dest_folder + "/models/uncertain_ctr/uncertainty.par");
    write_to_file(uncertainty_set, t_dest_folder + "/uncertainty_sets/discrete_knapsack");

    return {
        std::move(deterministic_model),
        std::move(robust_description)
    };
}

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
        create_uncertain_obj_model(model, dest_folder);
        create_uncertain_ctr_model(model, dest_folder);
    }


    return 0;
}
