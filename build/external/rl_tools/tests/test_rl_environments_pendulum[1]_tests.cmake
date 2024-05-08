add_test( RL_TOOLS_RL_ENVIRONMENTS_PENDULUM_TEST.COMPARISON /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/test_rl_environments_pendulum [==[--gtest_filter=RL_TOOLS_RL_ENVIRONMENTS_PENDULUM_TEST.COMPARISON]==] --gtest_also_run_disabled_tests)
set_tests_properties( RL_TOOLS_RL_ENVIRONMENTS_PENDULUM_TEST.COMPARISON PROPERTIES WORKING_DIRECTORY /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests)
set( test_rl_environments_pendulum_TESTS RL_TOOLS_RL_ENVIRONMENTS_PENDULUM_TEST.COMPARISON)
