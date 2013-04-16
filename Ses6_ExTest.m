%% Excercise (Test)
clear all; 
close all; 
clc; 

% Calculate the root of the function funTest
funTest = @(x) ((x - 1) .* (x - 2)); 

% Interval points 
a = 1.5;  
b = 3; 

% Tolerance 
TOL = 1e-8; 

% Maximum number of iterations
NMAX = 1000; 

% Calculate the zero for the given interval 
[alpha, res, nIter, err] = bisectionRootFinder(funTest, a, b, TOL, NMAX); 

%Plotting 
x = -3:0.1:3; 

figure (1); 
plot (x, funTest(x), 'DisplayName', 'function f(x)'); hold on; grid on;  
plot(alpha, funTest(alpha), 'g*', 'DisplayName', 'Root by BISECTION'); hold off; 
legend ('show');

fprintf('The found zero is %f \n', alpha);
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);
