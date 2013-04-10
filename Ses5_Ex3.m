%% Excercise (3)
%% (a & b)
clear all; 
clc; 

% Function 
funEx3 = @(t, y) (-y .* (0.1 - cos(t))); 

% Initial value 
y0 = 1; 

% Time interval 
interval = [0 12];

% Span 
h = 0.4; 

% Number of steps 
Nh = 12/h; 

% Forward Euler 
[t_FE, y_FE] = forwardEulerSolver(funEx3, interval, y0, Nh); 

% Heun Euler 
[t_H, y_H] = heunSolver(funEx3, interval(1), interval(2), y0, Nh); 

% Exact Solution 
t_EX = 0:0.1:12;
y_EX = exp((-0.1 * t_EX) + (sin(t_EX))); 

% Plot the results 
figure(1) 
plot(t_FE, y_FE, '-r', 'DisplayName', 'Forward Euler'); hold on;
plot(t_H, y_H, '--g', 'DisplayName', 'Heun'); hold on;
plot(t_EX, y_EX, '-b', 'DisplayName', 'Exact Solution'); hold off;
legend('show');

%% (c)
% Several h values 
h_Vector = [0.4 0.2 0.1 0.05];
h_VectorString = ['0.4' '0.2' '0.1' '0.05'];

% For coloring 
colorCurve = hsv(4);

% Figure 2 for plotting the results of the different steps 
figure(2)

for i = 1:1:4
    % Span value 
    h = h_Vector(i);
    
    % Number of steps 
    Nh = 12/h;
    
    % Forward Euler 
    [t_FE, y_FE] = forwardEulerSolver(funEx3, interval, y0, Nh);
    
    % Plot the results 
    plot(t_FE, y_FE, 'color', colorCurve(i,:)); hold on;
end 
legend(h_VectorString(1:3), h_VectorString(4:6), h_VectorString(7:9), h_VectorString(10:13));

%% (d)

error_Euler = zeros(1, 5); 
error_Heun = zeros(1, 5); 

% Several h values 
h_Vector = [0.4, 0.2, 0.1, 0.05, 0.025];

for i = 1:1:5
    % Span value 
    h = h_Vector(i);
    
    % Number of steps 
    Nh = 12/h;
    
    % Forward Euler 
    [t_FE, y_FE] = forwardEulerSolver(funEx3, interval, y0, Nh);
    
    % Get the exact solution with the same time steps
    y_EX = exp((-0.1 * t_FE) + (sin(t_FE)));
    
    % Snapshot @ t = 6 
    snapShot_6 = interval(1) + (Nh / 2);
    
    % Error of forward Euler 
    error_Euler(i) = abs(y_EX(snapShot_6) - y_FE(snapShot_6));
    
    % Heun Euler 
    [t_H, y_H] = heunSolver(funEx3, interval(1), interval(2), y0, Nh);
    
    % Get the exact solution with the same time steps
    y_EX = exp((-0.1 * t_FE) + (sin(t_FE)));
    
    % Error of forward Euler 
    error_Heun(i) = abs(y_EX(snapShot_6) - y_H(snapShot_6));
    
end

figure(3);
loglog(h_Vector, error_Euler, '-sb',h_Vector, error_Heun, '-sr');
legend('Forward Euler Error', 'Heun Method Error');
grid on;
