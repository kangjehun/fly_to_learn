if(EXISTS "/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/random/test_random_arm[1]_tests.cmake")
  include("/home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/random/test_random_arm[1]_tests.cmake")
else()
  add_test(test_random_arm_NOT_BUILT test_random_arm_NOT_BUILT)
endif()