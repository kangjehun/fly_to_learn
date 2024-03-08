add_test( RL_TOOLS_LOGGING_TENSORBOARD.INIT /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/logging/logging_tensorboard [==[--gtest_filter=RL_TOOLS_LOGGING_TENSORBOARD.INIT]==] --gtest_also_run_disabled_tests)
set_tests_properties( RL_TOOLS_LOGGING_TENSORBOARD.INIT PROPERTIES WORKING_DIRECTORY /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/logging)
set( logging_tensorboard_TESTS RL_TOOLS_LOGGING_TENSORBOARD.INIT)
