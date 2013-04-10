%% Excercise (4)
%% (a)
clear all; 
clc; 

% Function 
funEx3 = @(t, y) (-t .* y .* y); 

% Initial value 
y0 = 2; 

% Time interval 
interval = [0 1];

% Number of steps 
Nh = [1 2 4 8 16]; 

for i = 1:1:5
    [t_FE, y_FE] = forwardEulerSolver(funEx3, interval, y0, Nh(i)); 
    plot(t_FE, y_FE); hold on;
end

% Forward Euler 
%[t_FE, y_FE] = forwardEulerSolver(funEx3, interval, y0, Nh); 

% Exact Solution 
y_EX = 2 ./ (1 + t_FE .* t_FE);
plot(t_FE, y_EX, '-r'); hold off;

% Plot the results 
%figure(1)
%plot(t_FE, y_FE, '-r', 'DisplayName', 'Forward Euler'); hold on;
%plot(t_BE, y_BE, '--g', 'DisplayName', 'Backward Euler'); hold on;
%plot(t_EX, y_EX, '-b', 'DisplayName', 'Exact Solution'); hold off;
%legend('show');