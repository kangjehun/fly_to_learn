namespace fly_to_learn {
    namespace steps {
        template <typename T_CONFIG>
        void logger(TrainingState<T_CONFIG>& ts){
            rlt::set_step(ts.device, ts.device.logger, ts.step);
        }
    }
}