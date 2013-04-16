%% Excercise (Sin(x))
clear all; 
close all; 
clc; 

% Calculate the root of the function funTest
funTest = @(x) (sin(x));  

% Interval points 
a = pi/2;  
b = 3 * pi / 2; 

% Tolerance 
TOL = 1e-8; 

% Maximum number of iterations
NMAX = 1000; 

% Calculate the zero for the given interval 
[alpha, res, nIter, err] = bisectionRootFinder(funTest, a, b, TOL, NMAX); 

%Plotting 
x = 0:0.1:2 * pi; 

figure (1); 
plot (x, funTest(x), 'DisplayName', 'function f(x)'); hold on; grid on;  
plot(alpha, funTest(alpha), 'g*', 'DisplayName', 'Root by BISECTION'); hold off; 
legend ('show');

fprintf('The found zero is %f \n', alpha);
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);
