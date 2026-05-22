//
// Created by Henri on 22/05/2026.
//
#include <iostream>
#include <random>

#include "../to_files.h"

using namespace idol;

// Sample a point uniformly from the simplex in R^4
std::vector<double> sample_simplex_4(std::mt19937 &t_engine) {

    std::gamma_distribution<double> gamma(1.0, 1.0);
    std::vector<double> result(4);

    double sum = 0.0;

    for (int i = 0; i < 4; ++i) {
        result[i] = gamma(t_engine);
        sum += result[i];
    }

    for (int i = 0; i < 4; ++i) {
        result[i] /= sum;
    }

    return result;
}

struct Instance {

    std::vector<double> c0;
    std::vector<double> r0;
    std::vector<std::vector<double>> Phi;
    std::vector<std::vector<double>> Psi;
    double B = 0;
    double kappa = 0.8;

    Instance(unsigned int t_n, std::mt19937& t_engine) {
        
        std::uniform_real_distribution uniform(0., 10.);

        c0 = std::vector(t_n, 0.);
        r0 = std::vector(t_n, 0.);

        Phi = std::vector(t_n, std::vector(4, 0.));
        Psi = std::vector(t_n, std::vector(4, 0.));

        // generate c0, r0, B
        for (int i = 0; i < t_n; ++i) {
            c0[i] = uniform(t_engine);
            r0[i] = c0[i] / 5.0;
            B += c0[i] * .5;
        }

        // generate Phi and Psi rows from simplex
        for (int i = 0; i < t_n; ++i) {
            Phi[i] = sample_simplex_4(t_engine);
            Psi[i] = sample_simplex_4(t_engine);
        }

    }

};

std::tuple<Model, Robust::Description, Bilevel::Description>
build_uncertain_technology_matrix_model(Env& t_env, const unsigned int t_n, std::mt19937& t_engine) {

    const Instance instance(t_n, t_engine);

    Model model(t_env);
    Model uncertainty_set(t_env);

    // Create variables here
    const auto& x = model.add_vars(Dim<1>(t_n), 0, 1, Binary, 0., "x");
    const auto& y = model.add_vars(Dim<1>(t_n), 0, 1, Binary, 0., "y");
    const auto& u = uncertainty_set.add_vars(Dim<1>(4), -1., 1., Continuous, 0., "u");

    Bilevel::Description bilevel_description(t_env);
    Robust::Description robust_description(uncertainty_set);

    // Capacity constraints
    const auto c = model.add_ctr(
        idol_Sum(i, Range(t_n),  instance.r0[i] * (x[i] + y[i])) <= instance.B,
      "capacity"
    );
    for (auto i : Range(t_n)) {
        const auto uncertain_coefficient = instance.r0[i] * idol_Sum(j, Range(4), instance.Psi[i][j] * u[j]) * .5;
        robust_description.set_uncertain_mat_coeff(c, x[i], uncertain_coefficient);
        robust_description.set_uncertain_mat_coeff(c, y[i], uncertain_coefficient);
    }

    // Interdiction constraints
    for (auto i : Range(t_n)) {
        model.add_ctr(x[i] + y[i] <= 1);
    }

    // Objective function (remember it is a maximization problem!)
    model.set_obj_expr(
        -1. * idol_Sum(i, Range(t_n),  instance.c0[i] * (x[i] + instance.kappa * y[i]))
    );
    for (auto i : Range(t_n)) {
        const auto uncertain_coefficient = instance.c0[i] * idol_Sum(j, Range(4), instance.Phi[i][j] * u[j]) * .5;
        robust_description.set_uncertain_obj(x[i], -uncertain_coefficient);
        robust_description.set_uncertain_obj(y[i], -instance.kappa * uncertain_coefficient);
    }

    // Variables y are second-stage variables
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

int main(int t_argc, const char** t_argv) {

    if (t_argc != 2) {
        std::cerr << "Usage: " << t_argv[0] << " <destination_folder>\n";
        return 1;
    }

    const std::string destination_folder = t_argv[1];
    Env env;

    std::mt19937 engine(0);
    for (unsigned int n = 5 ; n <= 30 ; n += 5) {
        for (unsigned int index = 0 ; index < 20 ; ++index) {

            const auto& instance_name = "CapBud_N" + std::to_string(n) + "_" + std::to_string(index);
            const auto instance_folder = destination_folder + "/" + instance_name;

            to_files(build_uncertain_technology_matrix_model(env, n, engine), instance_folder + "/models/uncertain_technology_matrix/");

            // Create uncertainty sets
            generate_box_uncertainty_set_files(
                Dim<1>(4),
                { { -1., 1. } },
                Continuous,
                instance_folder + "/uncertainty_sets");
        }
    }

    return 0;
}
