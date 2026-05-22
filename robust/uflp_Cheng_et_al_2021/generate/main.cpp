//
// Created by Henri on 22/05/2026.
//
#include <iostream>
#include <filesystem>

#include "idol/modeling.h"
#include "idol/bilevel/modeling/Description.h"
#include "idol/bilevel/modeling/write_to_file.h"
#include "idol/robust/modeling/Description.h"
#include "idol/mixed-integer/problems/facility-location-problem/FLP_Instance.h"
#include "idol/robust/modeling/read_from_file.h"

using namespace idol;

std::tuple<Model, Robust::Description, Bilevel::Description>
build_uncertain_rhs_model(Env& t_env, const Problems::FLP::Instance& t_instance) {

    Model model(t_env);
    Model uncertainty_set(t_env);

    const auto n_facilities = t_instance.n_facilities();
    const auto n_customers = t_instance.n_customers();

    const auto& x = model.add_vars(Dim<1>(n_facilities), 0, 1, Binary, 0, "x");
    const auto& y = model.add_vars(Dim<2>(n_facilities, n_customers), 0, 1, Continuous, 0, "y");
    const auto& z = model.add_vars(Dim<1>(n_customers), 0, 1, Continuous, 0, "z");
    const auto& u = uncertainty_set.add_vars(Dim<1>(n_facilities), 0, 1, Binary, 0, "u");

    Bilevel::Description bilevel_description(t_env);
    Robust::Description robust_description(uncertainty_set);

    // Demand satisfaction constraints
    for (auto j : Range(n_customers)) {
        model.add_ctr(
            idol_Sum(i, Range(n_facilities), y[i][j]) + z[j] >= 1,
            "demand_" + std::to_string(j)
        );
    }

    // Activation constraints
    for (auto i : Range(n_facilities)) {
        for (auto j : Range(n_customers)) {
            model.add_ctr(
                y[i][j] <= x[i],
                "activation_" + std::to_string(i) + "_" + std::to_string(j)
            );
        }
    }

    // Uncertain constraints
    for (auto i : Range(n_facilities)) {
        for (auto j : Range(n_customers)) {
            const auto c = model.add_ctr(
                y[i][j] <= 1,
                "disruption_" + std::to_string(i) + "_" + std::to_string(j)
            );
            robust_description.set_uncertain_rhs(c, -u[i]);
        }
    }

    // Objective function
    model.set_obj_expr(
        idol_Sum(i, Range(n_facilities), t_instance.fixed_cost(i) * x[i])
        +
        idol_Sum(i, Range(n_facilities), idol_Sum(j, Range(n_customers), t_instance.demand(j) * t_instance.per_unit_transportation_cost(i, j) * y[i][j]))
        +
        idol_Sum(j, Range(n_customers), t_instance.demand(j) * t_instance.per_unit_penalty(j) * z[j])
    );

    // Variables y and z are second-stage variables
    for (const auto& var : model.vars()) {
        if (!var.name().starts_with('x')) {
            bilevel_description.make_lower_level(var);
        }
    }

    // All constraints are second-stage constraints
    for (const auto& ctr : model.ctrs()) {
        bilevel_description.make_lower_level(ctr);
    }

    return {
        std::move(model),
        std::move(robust_description),
        std::move(bilevel_description)
    };
}

std::tuple<Model, Robust::Description, Bilevel::Description>
build_uncertain_technology_matrix_model(Env& t_env, const Problems::FLP::Instance& t_instance) {

    Model model(t_env);
    Model uncertainty_set(t_env);

    const auto n_facilities = t_instance.n_facilities();
    const auto n_customers = t_instance.n_customers();

    const auto& x = model.add_vars(Dim<1>(n_facilities), 0, 1, Binary, 0, "x");
    const auto& y = model.add_vars(Dim<2>(n_facilities, n_customers), 0, 1, Continuous, 0, "y");
    const auto& z = model.add_vars(Dim<1>(n_customers), 0, 1, Continuous, 0, "z");
    const auto& u = uncertainty_set.add_vars(Dim<1>(n_facilities), 0, 1, Binary, 0, "u");

    Bilevel::Description bilevel_description(t_env);
    Robust::Description robust_description(uncertainty_set);

    // Demand satisfaction constraints
    for (auto j : Range(n_customers)) {
        model.add_ctr(
            idol_Sum(i, Range(n_facilities), y[i][j]) + z[j] >= 1,
            "demand_" + std::to_string(j)
        );
    }

    // Activation and disruption constraints
    for (auto i : Range(n_facilities)) {
        for (auto j : Range(n_customers)) {
            const auto c = model.add_ctr(
                y[i][j] <= x[i],
                "activation_" + std::to_string(i) + "_" + std::to_string(j)
            );
            robust_description.set_uncertain_mat_coeff(c, x[i], -u[i]);
        }
    }

    // Objective function
    model.set_obj_expr(
        idol_Sum(i, Range(n_facilities), t_instance.fixed_cost(i) * x[i])
        +
        idol_Sum(i, Range(n_facilities), idol_Sum(j, Range(n_customers), t_instance.demand(j) * t_instance.per_unit_transportation_cost(i, j) * y[i][j]))
        +
        idol_Sum(j, Range(n_customers), t_instance.demand(j) * t_instance.per_unit_penalty(j) * z[j])
    );

    // Variables y and z are second-stage variables
    for (const auto& var : model.vars()) {
        if (!var.name().starts_with('x')) {
            bilevel_description.make_lower_level(var);
        }
    }

    // All constraints are second-stage constraints
    for (const auto& ctr : model.ctrs()) {
        bilevel_description.make_lower_level(ctr);
    }

    return {
        std::move(model),
        std::move(robust_description),
        std::move(bilevel_description)
    };
}

void to_files(const std::tuple<Model, Robust::Description, Bilevel::Description>& t_model, const std::filesystem::path& t_folder) {
    std::filesystem::create_directories(t_folder);
    const auto& [model, robust_description, bilevel_description] = t_model;
    idol::Robust::write_to_file(model, robust_description, bilevel_description, t_folder);
    std::filesystem::remove(t_folder.string() + "-unc.mps");
    std::filesystem::rename(t_folder.string() + ".mps", t_folder.string() + "model.mps");
    std::filesystem::rename(t_folder.string() + ".aux", t_folder.string() + "stages.aux");
    std::filesystem::rename(t_folder.string() + ".par", t_folder.string() + "uncertainty.par");
}

Model build_budgeted_uncertainty_set(Env& t_env, const Problems::FLP::Instance& t_instance, double t_budget) {

    Model model(t_env);

    const auto n_facilities = t_instance.n_facilities();

    const auto& u = model.add_vars(Dim<1>(n_facilities), 0, 1, Binary, 0, "u");
    model.add_ctr(idol_Sum(i, Range(n_facilities), u[i]) <= t_budget);

    return std::move(model);
}

int main(int t_argc, const char** t_argv) {

    if (t_argc != 3) {
        std::cerr << "Usage: " << t_argv[0] << " <src_folder> <destination_folder>\n";
        return 1;
    }

    const std::string src_folder = t_argv[1];
    const std::string destination_folder = t_argv[2];
    Env env;

    for (const auto& entry : std::filesystem::directory_iterator(src_folder)) {
        for (const double d : { .8, 1. }) {
            const auto instance = Problems::FLP::read_instance_2021_Cheng_et_al(entry.path(), d);
            const auto& instance_name = entry.path().stem().string() + "_d" + std::to_string((int) (100 * d));
            const auto instance_folder = destination_folder + "/" + instance_name;

            to_files(build_uncertain_rhs_model(env, instance), instance_folder + "/models/uncertain_rhs/");
            to_files(build_uncertain_technology_matrix_model(env, instance), instance_folder + "/models/uncertain_technology_matrix/");

            // Create uncertainty sets
            std::filesystem::create_directories(instance_folder + "/uncertainty_sets");
            for (const auto& budget : { 1, 2, 3, 4, (int) std::round(instance.n_facilities() * .5), (int) std::round(std::sqrt(instance.n_facilities())) }) {
                write_to_file(build_budgeted_uncertainty_set(env, instance, budget), instance_folder + "/uncertainty_sets/gamma-" + std::to_string(budget) + ".mps");
            }
        }
    }

    return 0;
}
