
if(RL_TOOLS_ENABLE_JSON AND RL_TOOLS_ENABLE_BOOST_BEAST)
find_package(Boost REQUIRED)
message(STATUS "Boost version: ${Boost_VERSION}")
add_executable(ui ui/ui.cpp)
target_link_libraries(
        ui
        PRIVATE
        rl_tools
        fly_to_learn
        Boost::boost
)
endif()

# add_executable(training_headless training.cpp)
# target_link_libraries(
#         training_headless
#         PRIVATE
#         rl_tools
#         fly_to_learn
# )
# add_executable(training_benchmark training.cpp)
# target_link_libraries(
#         training_benchmark
#         PRIVATE
#         rl_tools
#         fly_to_learn
# )
# target_compile_definitions(training_benchmark PRIVATE FLY_TO_LEARN_BENCHMARK)

# if(RL_TOOLS_ENABLE_HDF5)
# add_executable(ablation_study ablation_study.cpp)
# target_link_libraries(
#         ablation_study
#         PRIVATE
#         rl_tools
#         fly_to_learn
# )
# endif()

# if(LEARNING_TO_FLY_ENABLE_OLD_UI)
# add_executable(evaluate_actor evaluate_actor.cpp)
# target_link_libraries(
#         evaluate_actor
#         PRIVATE
#         rl_tools
#         fly_to_learn
# )
# endif()


if(RL_TOOLS_BACKEND_ENABLE_CUDA)
    add_subdirectory(cuda)
endif()