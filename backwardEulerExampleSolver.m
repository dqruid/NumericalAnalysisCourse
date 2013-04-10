% Examples for Forward Euler Solver 

clc; 
clear all; 

%% Sample Example 
f = @(t, y) (y); 

% Time samples 
timeSamples = [0 4]; 

% Initial value 
y0 = 1; 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t4, y4] = backwardEulerSolver(f, timeSamples, y0, 4); 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t320, y320] = backwardEulerSolver(f, timeSamples, y0, 320); 

figure()
plot(t320, y320, '-r', 'DisplayName', 'y320'); hold on; 
plot(t4, y4, '-b', 'DisplayName', 'y4'); hold off;
legend('show');

%% Excercise Example 
% Sample function 
f = @(t, y) ((2 * y / 15) * ((1 - y)/1000)); 

% Time samples 
timeSamples = [0 200]; 

% Initial value 
y0 = 100; 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t25, y25] = backwardEulerSolver(f, timeSamples, y0, 25); 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t7, y7] = backwardEulerSolver(f, timeSamples, y0, 7); 

figure()
plot(t25, y25, '-r', 'DisplayName', 'y25'); hold on; 
plot(t7, y7, '-b', 'DisplayName', 'y7'); hold off;
legend('show');

%% Excercise Example (2)

clear all; 
% Sample function 
f = @(t, y) (2 * (t -1)); 

% Time samples 
timeSamples = [0 10]; 

% Initial value 
y0 = 1; 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t25, y25] = backwardEulerSolver(f, timeSamples, y0, 25); 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t7, y7] = backwardEulerSolver(f, timeSamples, y0, 7); 

figure(3)
plot(t25, y25, '-r', 'DisplayName', 'y25'); hold on; 
plot(t7, y7, '-b', 'DisplayName', 'y7'); hold off;
legend('show');




