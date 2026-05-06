cmake_minimum_required(VERSION 4.1)
project(idol_instances)

set(CMAKE_CXX_STANDARD 20)

include(FetchContent)

FetchContent_Declare(
        idol
        GIT_REPOSITORY https://github.com/hlefebvr/idol.git
        GIT_TAG        origin/dev
)

FetchContent_MakeAvailable(idol)

add_subdirectory(robust/single-stage/decision-dependent/generate-bobilib)

