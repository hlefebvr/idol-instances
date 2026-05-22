//
// Created by Henri on 22/05/2026.
//
#include <fstream>
#include <iostream>
#include <vector>
#include <string>
#include "../to_files.h"

using namespace idol;

struct Item {
    double p_bar;
    double p_hat;
    double t;
    double c;
    double f;
};

struct Instance {
    int n_items;
    double capacity;
    double Gamma;
    std::vector<Item> items;
};

Instance read_instance(const std::string& filename) {
    std::ifstream in(filename);

    Instance inst;

    in >> inst.n_items >> inst.capacity >> inst.Gamma;

    inst.items.resize(inst.n_items);

    for (int i = 0; i < inst.n_items; i++) {
        in >> inst.items[i].p_bar
           >> inst.items[i].p_hat
           >> inst.items[i].t
           >> inst.items[i].c
           >> inst.items[i].f;
    }

    return inst;
}

std::tuple<Model, Robust::Description, Bilevel::Description>
build_uncertain_obj_model(Env& t_env, const Instance& t_instance) {

    Model model(t_env);
    Model uncertainty_set(t_env);

    const auto& x = model.add_vars(Dim<1>(t_instance.n_items), 0, 1, Binary, 0, "x");
    const auto& y = model.add_vars(Dim<1>(t_instance.n_items), 0, 1, Binary, 0, "y");
    const auto& r = model.add_vars(Dim<1>(t_instance.n_items), 0, 1, Binary, 0, "r");
    const auto& u = uncertainty_set.add_vars(Dim<1>(t_instance.n_items), 0, 1, Continuous, 0, "u");

    Bilevel::Description bilevel_description(t_env);
    Robust::Description robust_description(uncertainty_set);

    // Constraints
    model.add_ctr(
        idol_Sum(i, Range(t_instance.n_items), t_instance.items[i].c * y[i] + t_instance.items[i].t * r[i]) <= t_instance.capacity,
        "capacity"
    );
    for (auto i : Range(t_instance.n_items)) {
        model.add_ctr(y[i] <= x[i], "wo_repair_" + std::to_string(i));
        model.add_ctr(r[i] <= y[i], "w_repair_" + std::to_string(i));
    }

    // Objective function
    model.set_obj_expr(
      idol_Sum(i, Range(t_instance.n_items),
            (t_instance.items[i].f - t_instance.items[i].p_bar) * x[i]
            - t_instance.items[i].f * y[i]
        )
    );
    for (auto i : Range(t_instance.n_items)) {
        robust_description.set_uncertain_obj(y[i], t_instance.items[i].p_hat * u[i]);
        robust_description.set_uncertain_obj(r[i], -t_instance.items[i].p_hat * u[i]);
    }

    // Variables y and r are second-stage variables
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

    if (t_argc != 3) {
        std::cerr << "Usage: " << t_argv[0] << " <src_folder> <destination_folder>\n";
        return 1;
    }

    const std::string src_folder = t_argv[1];
    const std::string destination_folder = t_argv[2];
    Env env;

    for (const auto& entry : std::filesystem::directory_iterator(src_folder)) {

        if (entry.path().filename().string() == "File format.txt") {
            continue;
        }

        const auto instance = read_instance(entry.path());
        const auto& instance_name = entry.path().filename().string();
        const auto instance_folder = destination_folder + "/" + instance_name;

        to_files(build_uncertain_obj_model(env, instance), instance_folder + "/models/uncertain_obj/");
        //to_files(build_uncertain_rhs_model(env, instance), instance_folder + "/models/uncertain_rhs/");

        // Create uncertainty sets
        generate_budgeted_uncertainty_set_files(
            Dim<1>(instance.n_items),
            { 1., 2., 3., 4., std::round(instance.n_items * .5), std::round(std::sqrt(instance.n_items)), instance.Gamma },
            Continuous,
            instance_folder + "/uncertainty_sets");
    }


    return 0;
}
