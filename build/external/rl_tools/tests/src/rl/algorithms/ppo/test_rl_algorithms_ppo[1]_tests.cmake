add_test( RL_TOOLS_RL_ALGORITHMS_PPO.TEST /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/ppo/test_rl_algorithms_ppo [==[--gtest_filter=RL_TOOLS_RL_ALGORITHMS_PPO.TEST]==] --gtest_also_run_disabled_tests)
set_tests_properties( RL_TOOLS_RL_ALGORITHMS_PPO.TEST PROPERTIES WORKING_DIRECTORY /home/usrg/jehun/fly_to_learn/build/external/rl_tools/tests/src/rl/algorithms/ppo)
set( test_rl_algorithms_ppo_TESTS RL_TOOLS_RL_ALGORITHMS_PPO.TEST)
