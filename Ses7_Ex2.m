%% Excercise (2-a)
clear all; 
close all; 
clc; 

% Calculate the root of the function funEx2
funEx2 = @(x) (x / 2 - sin(x) + pi / 6 - sqrt(3)/2);  

x = -10:0.001:10;
y_funEx2 = funEx2(x);
figure(1)
plot(x, y_funEx2); 
grid on; 

% Interval points 
a = 1.5;  
b = 5; 

% Tolerance 
TOL = 1e-8; 

% Maximum number of iterations
NMAX = 1000; 

% Calculate the zero for the given interval 
[alpha, res, nIter, err] = bisectionRootFinder(funEx2, a, b, TOL, NMAX); 

figure (2); 
plot (x, funEx2(x), 'DisplayName', 'function f(x)'); hold on; grid on;  
plot(alpha, funEx2(alpha), 'g*', 'DisplayName', 'Root by BISECTION'); hold off; 
legend ('show');

% Print results
fprintf('The found zero is %f \n', alpha);
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);

%% Excercise (2-b)
dFun = @(x) (0.5 - cos(x)); 

% Tolerance 
TOL = 1e-8; 

% Initial Guess x0 for alpha 
x0 = pi; 

% Maximum number of iterations 
NMAX = 1000; 

% Print results 
[root_alpha, res, nIter, increment_1] = newtonRootFinder(funEx2, dFun, x0, TOL, NMAX); 
disp('-----------------');
fprintf('The found root (alpha) is %f \n', root_alpha(length(root_alpha)));
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);
disp('increment_1'); 
disp(increment_1); 


% Initil Guess x0 for beta 
x0 = -pi / 2; 

[root_beta, res, nIter, increment_2] = newtonRootFinder(funEx2, dFun, x0, TOL, NMAX); 
disp('-----------------');
fprintf('The found root (beta) is %f \n', root_beta(length(root_beta)));
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);
disp('increment_2'); 
disp(increment_2); 

% Showing the Increments as a function of the number of iterations 
figure(3); 
semilogy(increment_1, '-r', 'DisplayName', 'alpha convergence'); hold on;
semilogy(increment_2, '--b', 'DisplayName', 'beta convergence'); hold on;
grid on; 
legend('show'); 

%% Excercise (2-c)
phi = @(x) (x - 2 * ((x ./ 2) - sin(x) + pi/6 - sqrt(3)/2) ./ (1/2 - cos(x)));
[root_beta, res, nIter] = fixedPoint(phi, -pi/2, 1e-8, 1000);
disp('-----------------');
fprintf('The found root (beta) is %f \n', root_beta);
fprintf('The residue is %f \n', res);
fprintf('The number of iterations is %f \n', nIter);






