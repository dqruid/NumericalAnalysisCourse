% Excercise (4)

clear all; 
clc; 

%% (c & d)
% Constants 
C = 2/15; 
B = 1000; 

% Function 
funEx4 = @(t, y) (C .* y .* (1-(y ./ B))); 

% Initial value 
y0 = 100; 

% Time interval 
interval = [0 100];

% Number of steps 
Nh = 20; 

% Forward Euler 
[t_FE, y_FE] = forwardEulerSolver(funEx4, interval, y0, Nh); 

figure(1)
plot(t_FE, y_FE, '-r', 'DisplayName', 'Solution');
xlabel('t'); ylabel ('yFE');
legend('show');


%% (e)
[t_FE_20, y_FE_20] = forwardEulerSolver(funEx4, interval, y0, 20); 
[t_FE_1000, y_FE_1000] = forwardEulerSolver(funEx4, interval, y0, 1000); 

figure(2)
plot(t_FE_20, y_FE_20, '-r', 'DisplayName', 'Nh = 20'); hold on;
plot(t_FE_1000, y_FE_1000, '-b', 'DisplayName', 'Nh = 1000'); hold off;
xlabel('t'); ylabel ('yFE');
legend('show');

%% (f)
% Find when the population will be 
yearsSampleIndexes = find((y_FE_1000 >= 900));

% Get the index of the first sample around 900
sample900Inxed = yearsSampleIndexes(1); 

% Convert the sample to time
% timeN = start + step * N  

step = (interval(2) - interval(1)) / 1000; 
time900 = interval(1) + (step) + t_FE_1000(sample900Inxed); 

fprintf('The population will reach to 900 after %f years \n', time900);