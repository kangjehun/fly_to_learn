# CMake generated Testfile for 
# Source directory: /home/usrg/jehun/fly_to_learn/external/rl_tools/tests/src/rl/algorithms/td3
# Build directory: /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3/test_rl_algorithms_td3_first_stage_mlp[1]_include.cmake")
include("/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3/test_rl_algorithms_td3_second_stage_mlp[1]_include.cmake")
include("/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3/test_rl_algorithms_td3_full_training_debug[1]_include.cmake")
include("/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3/test_rl_algorithms_td3_full_training[1]_include.cmake")
add_test(test_rl_algorithms_td3_full_training_dummy_dep_compilation "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3/test_rl_algorithms_td3_full_training_dummy_dep_compilation")
set_tests_properties(test_rl_algorithms_td3_full_training_dummy_dep_compilation PROPERTIES  _BACKTRACE_TRIPLES "/home/usrg/jehun/fly_to_learn/external/rl_tools/tests/src/rl/algorithms/td3/CMakeLists.txt;100;add_test;/home/usrg/jehun/fly_to_learn/external/rl_tools/tests/src/rl/algorithms/td3/CMakeLists.txt;0;")
add_test(test_rl_algorithms_td3_full_training_dummy_dep_training "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/td3/test_rl_algorithms_td3_full_training_dummy_dep_training")
set_tests_properties(test_rl_algorithms_td3_full_training_dummy_dep_training PROPERTIES  _BACKTRACE_TRIPLES "/home/usrg/jehun/fly_to_learn/external/rl_tools/tests/src/rl/algorithms/td3/CMakeLists.txt;116;add_test;/home/usrg/jehun/fly_to_learn/external/rl_tools/tests/src/rl/algorithms/td3/CMakeLists.txt;0;")
