% round and run number
corner_drvbrk = "Corner"; %or "DriveBrake"
round = "9";
n = "41"; %run #
rn = "Run" + n;

if round == "8"
    roundID = "A1965run";
elseif round == "9"
    roundID = "A2356run";
end

% path
path = corner_drvbrk + "_R" + round + "/" + roundID + n + ".mat";
disp(path);
load(path);

% vs Time graphs
figure;

% Slip Angle
subplot(2, 4, 1)
scatter(ET, SA, 10, 'b', 'filled')
title([rn "Time vs Slip Angle"])
xlabel("Elapsed Time, sec")
ylabel("Slip Angle, deg")
grid on

% Tire Pressure
subplot(2, 4, 2)
scatter(ET, P, 10, 'b', 'filled')
title([rn "Time vs Tire Pressure"])
xlabel("Elapsed Time, sec")
ylabel("Pressure, psi")
grid on

% Normal Load
subplot(2, 4, 3)
scatter(ET, FZ, 10, 'b', 'filled')
title([rn "Time vs Noraml Load (FZ)"])
xlabel("Elapsed Time, sec")
ylabel("Normal Load, lbs")
grid on

% Camber Angle
subplot(2, 4 ,4)
scatter(ET, IA, 10, 'b', 'filled')
title([rn "Time vs Camber Angle"])
xlabel("Elapsed Time, sec")
ylabel("Camber Angle, deg")
grid on

% Lateral Force
subplot(2, 4, 5)
scatter(ET, FX, 10, 'b', 'filled')
title([rn "Time vs Longitudinal force"])
xlabel("Elapsed Time, sec")
ylabel("Longitudinal Force, lbs")
grid on

% Veloce
subplot(2, 4, 6)
scatter(ET, V, 10, 'b', 'filled')
title([rn "Time vs ROAD Speed"])
xlabel("Elapsed Time, sec")
ylabel("Road Speed, mph")
ylim([0 50])
grid on

% Fx
subplot(2, 4, 7)
scatter(ET, FX, 10, 'b', 'filled')
title([rn "Time vs Longitudinal Force"])
xlabel("Elapsed Time, sec")
ylabel("Fx, N")
grid on

% SR
subplot(2, 4, 8)
scatter(ET, SR, 10, 'b', 'filled')
title([rn "Time vs Slip Ratio"])
xlabel("Elapsed Time, sec")
ylabel("Slip Ratio")
grid on

%tire speed
%miles = 1 / 63360 ; %inch mile
%V_tire = ( ( N .* RE ) * 2 * pi * 60 * miles); 
% tire speed = (omegar2pi)/60
% N (rot/min)*(60min/hour)-> rot/hour
% RE (in) -> RE (miles)
%figure, scatter(ET, V_tire)
%title([rn "Time vs TIRE Speed"])
%xlabel("Elapsed Time, sec")
%ylabel("Tire Speed, mph")
%ylim([0 50])
%grid on

% Lateral over Normal
%figure, scatter(ET, NFY, 10, 'b', 'filled');
%xlable('Elapsed Time, sec');
%ylabel('NFY (FY/FZ)');
%grid on