% Examples for Forward Euler Solver 

clc; 
clear all; 

%% Sample Example 
f = @(t, y) (y); 

% Time samples 
timeSamples_0 = 0; 
timeSamples_N = 4;

% Initial value 
y0 = 1; 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t4, y4] = eulerSample(f, timeSamples_0, timeSamples_N, y0, 4); 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t320, y320] = eulerSample(f, timeSamples_0, timeSamples_N, y0, 320); 

figure(1)
plot(t320, y320, '-r', 'DisplayName', 'y320'); hold on; 
plot(t4, y4, '-b', 'DisplayName', 'y4'); hold off;
legend('show');

%% Excercise Example (1)
clear all; 

% Sample function 
f = @(t, y) ((2 * y / 15) * ((1 - y)/1000)); 

% Time samples 
timeSamples_0 = 0; 
timeSamples_N = 200; 

% Initial value 
y0 = 100; 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t25, y25] = eulerSample(f, timeSamples_0, timeSamples_N, y0, 25); 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t7, y7] = eulerSample(f, timeSamples_0, timeSamples_N, y0, 7); 

figure(2)
plot(t25, y25, '-r', 'DisplayName', 'y25'); hold on; 
plot(t7, y7, '-b', 'DisplayName', 'y7'); hold off;
legend('show');


%% Excercise Example (2)

clear all; 
% Sample function 
f = @(t, y) (2 * (t-1)); 

% Time samples 
timeSamples_0 = 0; 
timeSamples_N = 10;

% Initial value 
y0 = 1; 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t1000, y1000] = eulerSample(f, timeSamples_0, timeSamples_N, y0, 1000); 

% Solve the ODE by Forward Euler Method (25 Steps) 
[t7, y7] = eulerSample(f, timeSamples_0, timeSamples_N, y0, 7); 

figure(3)
plot(t1000, y1000, '-r', 'DisplayName', 'y100'); hold on; 
plot(t7, y7, '-b', 'DisplayName', 'y7'); hold off;
legend('show');



