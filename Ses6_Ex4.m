%% Excercise (4)
clear all; 
close all; 
clc; 

% Calculate the root of the function funEx4
funEx4 = @(x) (sin(2 * x) - 1 + x); 

% Interval points 
a = -1;  
b = 1; 

% Tolerance 
TOL = 1e-8; 

% Maximum number of iterations
NMAX = 1000; 

% Calculate the zero for the given interval 
[alpha, res, nIter, err] = bisectionRootFinder(funEx4, a, b, TOL, NMAX); 



%Plotting 
x = -3:0.1:3; 

figure (1); 
plot (x, funEx4(x), 'DisplayName', 'function f(x)'); hold on; grid on;  
plot(alpha, funEx4(alpha), 'g*', 'DisplayName', 'Root by BISECTION'); hold off; 
legend ('show');

fprintf('The found zero is %f \n', alpha);
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);
