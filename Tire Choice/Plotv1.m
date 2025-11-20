% input run numbers, x, y, time
plot12 = [];
plot34 = [];

y_axis = 'FY';
x_axis = 'SA';

y_axis_units = '()';
x_axis_units = '()';

poly_smooth = 9; % degree of polynomial
smooth_factor = ; % smoothing 
shade = ; % colour 

%target & tolerance
P_target  = 14.0;   P_tol  = 0.5;
IA_target = 2.0;    IA_tol = 0.3;
V_target  = 25.0;   V_tol  = 0.5;
FZ_target = -150;   FZ_tol = 20;



