//
// Created by Henri on 22/05/2026.
//

#ifndef IDOL_INSTANCES_TO_FILES_H
#define IDOL_INSTANCES_TO_FILES_H

#include <filesystem>

#include "idol/modeling.h"
#include "idol/bilevel/modeling/Description.h"
#include "idol/bilevel/modeling/write_to_file.h"
#include "idol/robust/modeling/Description.h"
#include "idol/robust/modeling/read_from_file.h"

inline void to_files(const std::tuple<idol::Model, idol::Robust::Description, idol::Bilevel::Description>& t_model, const std::filesystem::path& t_folder) {
    std::filesystem::create_directories(t_folder);
    const auto& [model, robust_description, bilevel_description] = t_model;
    idol::Robust::write_to_file(model, robust_description, bilevel_description, t_folder);
    std::filesystem::remove(t_folder.string() + "-unc.mps");
    std::filesystem::rename(t_folder.string() + ".mps", t_folder.string() + "model.mps");
    std::filesystem::rename(t_folder.string() + ".aux", t_folder.string() + "stages.aux");
    std::filesystem::rename(t_folder.string() + ".par", t_folder.string() + "uncertainty.par");
}

template<unsigned int Size>
inline idol::Model
build_budgeted_uncertainty_set(idol::Env& t_env, const idol::Dim<Size>& t_dims, double t_budget, idol::VarType t_type) {

    idol::Model model(t_env);

    const auto& u = model.add_vars(t_dims, 0, 1, t_type, 0, "u");
    const auto& all_us = idol::flatten<idol::Var, Size>(u);
    model.add_ctr(idol_Sum(u_i, all_us, u_i) <= t_budget, "budget");

    return std::move(model);
}

template<unsigned int Size>
inline idol::Model
build_box_uncertainty_set(idol::Env& t_env, const idol::Dim<Size>& t_dims, double t_lb, double t_ub, idol::VarType t_type) {

    idol::Model model(t_env);

    const auto& u = model.add_vars(t_dims, t_lb, t_ub, t_type, 0, "u");

    return std::move(model);
}

template<unsigned int DIM>
inline void
generate_budgeted_uncertainty_set_files(const idol::Dim<DIM>& t_dims, const std::list<double>& t_budgets, idol::VarType t_type, const std::filesystem::path& t_folder) {
    idol::Env env;
    std::filesystem::create_directories(t_folder.string());
    for (const auto& budget : t_budgets) {

        std::ostringstream ss;
        ss << std::fixed << std::setprecision(2) << budget;
        std::string pretty_budget = ss.str();
        std::replace(pretty_budget.begin(), pretty_budget.end(), '.', '_');

        idol::write_to_file(
            build_budgeted_uncertainty_set(env, t_dims, budget, t_type),
            t_folder.string() + "/budgeted-" + pretty_budget
        );
    }
}

template<unsigned int DIM>
inline void
generate_box_uncertainty_set_files(const idol::Dim<DIM>& t_dims, const std::list<std::pair<double, double>>& t_bounds, idol::VarType t_type, const std::filesystem::path& t_folder) {
    idol::Env env;
    std::filesystem::create_directories(t_folder.string());
    for (const auto& [lb, ub] : t_bounds) {

        std::ostringstream ss;
        ss << std::fixed << std::setprecision(2) << lb << "__" <<ub;
        std::string pretty_bounds = ss.str();
        std::replace(pretty_bounds.begin(), pretty_bounds.end(), '.', '_');

        idol::write_to_file(
            build_box_uncertainty_set(env, t_dims, lb, ub, t_type),
            t_folder.string() + "/box-" + pretty_bounds
        );
    }
}

#endif //IDOL_INSTANCES_TO_FILES_H