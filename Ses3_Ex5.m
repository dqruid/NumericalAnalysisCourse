%% Exercise (5)

clear all; 
clc; 

%% (a)
% Function 
funEx5 = @(t, y) (sqrt(y) .* (1 ./ (1 + (t .* t)))); 

% Time interval 
interval = [0 20];

% Number of steps 
Nh = 100; 

y0 = 0; 
[t_0, y_0] = backwardEulerSolver(funEx5, interval, y0, Nh);

y0 = 1; 
[t_1, y_1] = backwardEulerSolver(funEx5, interval, y0, Nh); 

% Plot the results 
figure(1)
plot(t_0, y_0, '-b', 'DisplayName', 'y0 = 0 - No Unique Solution'); hold on; 
plot(t_1, y_1, '-r', 'DisplayName', 'y0 = 1 - Unique Solution'); hold off; 
legend('show');

%% (b) 
Nh = 10;
[t_10, y_10] = backwardEulerSolver(funEx5, interval, y0, Nh);

Nh = 50;
[t_50, y_50] = backwardEulerSolver(funEx5, interval, y0, Nh); 

Nh = 100;
[t_100, y_100] = backwardEulerSolver(funEx5, interval, y0, Nh); 

Nh = 500;
[t_500, y_500] = backwardEulerSolver(funEx5, interval, y0, Nh); 

% Plot the results 
figure(2)
plot(t_10, y_10, '-b', 'DisplayName', 'Nh = 10'); hold on; 
plot(t_50, y_50, '--b', 'DisplayName', 'Nh = 50'); hold on; 
plot(t_100, y_100, '-r', 'DisplayName', 'Nh = 100'); hold on; 
plot(t_500, y_500, '--r', 'DisplayName', 'Nh = 500'); hold off;
legend('show');

%% (c)
% Exact
t = 1:1:20;
y_EX = ((1 + 0.5 .* atan(t)) .* (1 + 0.5 .* atan(t)));

% Plot the results 
figure(3)
plot(t, y_EX, '*g', 'DisplayName', 'Exact Solution'); hold on; 
plot(t_10, y_10, '-b', 'DisplayName', 'Nh = 10'); hold on; 
plot(t_50, y_50, '--b', 'DisplayName', 'Nh = 50'); hold on; 
plot(t_100, y_100, '-r', 'DisplayName', 'Nh = 100'); hold on; 
plot(t_500, y_500, '--r', 'DisplayName', 'Nh = 500'); hold off;
legend('show');

%% (d)
% Error Calculation 
% Use t returned from Euler 

y_EXACT = @(t) ((1 + 0.5 .* atan(t)) .* (1 + 0.5 .* atan(t)));

% Error array for the different cases 
maxError = zeros(1, 4); 

% Iteration 
iteration = 0; 

% Initial value 
y0 = 1; 

% figure (4)
for Nh = [10, 50, 100, 500]
    iteration = iteration + 1; 
    
    % Get the approximate solution 
    [t, y_BE_i] = backwardEulerSolver(funEx5, interval, y0, Nh); 
    
    % Get the exact solution at the same t samples 
    y_EX = y_EXACT(t); 
    
    % Global error 
    maxError(iteration) = max(abs(y_EX - y_BE_i));
    
    % Normal plot 
    % plot (t, abs(y_EX - y_BE_i)); hold on; 
    
    % log plot 
    loglog([10, 50, 100, 500], maxError); grid; 
   
end

% Display the Max error array
disp(maxError); 

%% (e) 
% Calculate the order or the p-value 
% E(h) = |y_n - u_n| 
% Use Nh_1 & Nh_2 to estimate p-value 

% Error array 
Error_h = zeros(1, 2);
step_h = zeros(1, 2);

% Iterations 
iteration = 0;

% Initial value 
y0 = 1; 

for Nh = [50, 500]
    iteration = iteration + 1; 
    
    % Get the approximate solution 
    [t, y_BE_i] = backwardEulerSolver(funEx5, interval, y0, Nh);
    
    % Calculate the step h
    step_h(iteration) = (interval(2) - interval(1)) / Nh;
    
    % Get the exact solution at the same t samples 
    y_EX = y_EXACT(t); 
    
    % Global error 
    maxError(iteration) = max(abs(y_EX - y_BE_i));   
end

p_value = log(maxError(2)/maxError(1))/log((step_h(2)/step_h(1)));
fprintf('The stimated p-value is %f \n', p_value); %SOLUTION =  0.959073

%% (f) 
% Explicit Euler (forward) 

Nh = 100; 
y0 = 1; 
[t_1, y_1_Forward] = forwardEulerSolver(funEx5, interval, y0, Nh);

% Plot the results 
figure(5)
plot(t_1, y_1_Forward, '-b', 'DisplayName', 'y1 = 1');
legend('show');





