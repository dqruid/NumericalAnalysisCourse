%% Excercise (3)
%% (a)
clear all; 
clc; 

% Function 
funEx3 = @(t, y) (-t .* y .* y); 

% Initial value 
y0 = 2; 

% Time interval 
interval = [0 4];

% Number of steps 
Nh = 20; 

% Forward Euler 
[t_FE, y_FE] = forwardEulerSolver(funEx3, interval, y0, Nh); 

% Backward Euler 
[t_BE, y_BE] = backwardEulerSolver(funEx3, interval, y0, Nh); 

% Exact Solution 
t_EX = 0:(4/Nh):4;
y_EX = 2 * exp(-2 * t_EX); 

% Plot the results 
figure(1)
plot(t_FE, y_FE, '-r', 'DisplayName', 'Forward Euler'); hold on;
plot(t_BE, y_BE, '--g', 'DisplayName', 'Backward Euler'); hold on;
plot(t_EX, y_EX, '-b', 'DisplayName', 'Exact Solution'); hold off;
legend('show');


%% (b)

% Initial value 
y0 = 1; 

% Time interval 
interval = [0 20];

% Number of steps 
Nh = 40; 

% Forward Euler 
[t_FE_40, y_FE_40] = forwardEulerSolver(funEx3, interval, y0, Nh); 

% Backward Euler 
[t_BE_40, y_BE_40] = backwardEulerSolver(funEx3, interval, y0, Nh); 

% Number of steps 
Nh = 20; 

% Forward Euler 
[t_FE_20, y_FE_20] = forwardEulerSolver(funEx3, interval, y0, Nh); 

% Backward Euler 
[t_BE_20, y_BE_20] = backwardEulerSolver(funEx3, interval, y0, Nh);

% Exact Solution 
t_EX = 0:(4/Nh):20;
y_EX = exp(-2 * t_EX); 

% Plot the results 
figure(2)
plot(t_FE_20, y_FE_20, '-r', 'DisplayName', 'Forware Euler 20'); hold on;
plot(t_FE_40, y_FE_40, '-g', 'DisplayName', 'Forware Euler 40'); hold on;
plot(t_EX, y_EX, '-b', 'DisplayName', 'Exact Solution'); hold off;
legend('show');


figure(3)
plot(t_BE_20, y_BE_20, '-r', 'DisplayName', 'Backward Euler 20'); hold on;
plot(t_BE_40, y_BE_40, '-g', 'DisplayName', 'Backward Euler 40'); hold on;
plot(t_EX, y_EX, '-b', 'DisplayName', 'Exact Solution'); hold off;
legend('show');

