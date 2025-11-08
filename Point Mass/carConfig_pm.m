function carCellpm = carConfig_pm()

m = 168 + 80; %car + driver
cla = 3.97;
cda = 1.48;
cop = 0.418;
torque_fn = KTM450(); 
max_braking_torque = 850; %N
rolling_radius = 0.1956;
wheel_radius = rolling_radius;
weight_r = 0.512;


%% constants
rolling_resistance = 0.025;
rho = 1.2;
g = 9.81;
mu_model_coeff = 2.727;
mu_model_exp = -0.096;

carCellpm = ;