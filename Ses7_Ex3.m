%% Excercise (3-a)
clear all; 
close all; 
clc; 


phi1 = @(x) (2 .* x); 
phi2 = @(x) ((2 .* x) ./ (1 + x)); 
phi3 = @(x) ((2 .* x .* x) ./ (1 + (x .* x)));

x = 0:0.001:2; 

figure(1) 
plot(x, phi1(x), '-r', 'DisplayName', 'phi1' ); hold on;
plot(x, x, '--b', 'DisplayName', 'x' ); hold off;
legend('show');

figure(2)
plot(x, phi2(x), '-r', 'DisplayName', 'phi2' ); hold on;
plot(x, x, '--b','DisplayName', 'x' ); hold on; 
legend('show');

figure(3)
plot(x, phi3(x), '-r', 'DisplayName', 'phi3' ); hold on;
plot(x, x, '--b', 'DisplayName', 'x' ); hold off;
legend('show');


%% Excercise (3-d)

% phi1
%--------------------------------------------------------------------------
% Initial guess
x0 = 1; 

% Tolerance 
TOL = 1e-6; 

% Number of ierations allowed 
NMAX = 200; 

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi1, x0, TOL, NMAX); 
fprintf('\np for phi1 is %f \n\n', p); 

% Number of ierations allowed 
NMAX = 1000; 

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi1, x0, TOL, NMAX); 
fprintf('\np for phi1 is %f \n\n', p); 


% phi2
%--------------------------------------------------------------------------
% Initial guess
x0 = 0.5; 

% Tolerance 
TOL = 1e-6; 

% Number of ierations allowed 
NMAX = 100; 

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi2, x0, TOL, NMAX); 
fprintf('\np for phi2 is %f, and Nuber of iterarions is %f \n\n', p, nIter);

% Initial guess
x0 = 0.2;

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi2, x0, TOL, NMAX); 
fprintf('\np for phi2 is %f, and Nuber of iterarions is %f \n\n', p, nIter);

% Initial guess
x0 = 2;

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi2, x0, TOL, NMAX); 
fprintf('\np for phi2 is %f, and Nuber of iterarions is %f \n\n', p, nIter);

% phi3
%--------------------------------------------------------------------------
% Initial guess
x0 = 0.8; 

% Tolerance 
TOL = 1e-6; 

% Number of ierations allowed 
NMAX = 100; 

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi3, x0, TOL, NMAX); 
fprintf('\np for phi3 is %f, and Nuber of iterarions is %f \n\n', p, nIter);

% Initial guess
x0 = 2; 

% Number of ierations allowed 
NMAX = 200;

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi3, x0, TOL, NMAX); 
fprintf('\np for phi3 is %f, and Nuber of iterarions is %f \n\n', p, nIter); 

% Number of ierations allowed 
NMAX = 2000;

% Find the FIXED POINT 
[p, res, nIter] = fixedPoint(phi3, x0, TOL, NMAX); 
fprintf('\np for phi3 is %f, and Nuber of iterarions is %f \n\n', p, nIter);




