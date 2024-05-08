add_library(rl_tools::rl_tools SHARED IMPORTED)

set_target_properties(rl_tools::rl_tools PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "/home/usrg/jehun/fly_to_learn/external/rl_tools/include"
)
