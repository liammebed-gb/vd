classdef Car_pm
    properties
        m 
        cla 
        cda 
        cop
        torque_fn 
        max_braking_torque 
        rolling_radius 
        wheel_radius 
        weight_r 
        weight_f
        bf_aero
        br_aero 
        rolling_resistance = 0.025;
        rho = 1.2;
        g = 9.81;
        mu_model_coeff 
        mu_model_exp
    end

    methods
