if(EXISTS "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/test_neural_network_full_training_mlp[1]_tests.cmake")
  include("/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/test_neural_network_full_training_mlp[1]_tests.cmake")
else()
  add_test(test_neural_network_full_training_mlp_NOT_BUILT test_neural_network_full_training_mlp_NOT_BUILT)
endif()
