%% Excercise (1)
clear all; 
clc; 

% Function 
funEx1 = @(t,y) [0.08 * y(1) - 0.004 * y(1) * y(2); 
                -0.06 * y(2) + 0.002 * y(1) * y(2)];

% Initial value 
y0 = [40;20]; 

% Interval 
interval = [0, 120]; 

% Steps 
Nh = 120; 

% Forward Euler 
[t, y] = forwardEulerSolver(funEx1, interval, y0, Nh); 

 
%plot(t, y(1,:), t, y(2, :))

