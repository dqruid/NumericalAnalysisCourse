% Backward Euler Solver 

function [t, y] = backwardEulerSolver(fun, interval, y0, N)
% Backward Euler Solver 
% Inputs 
%   ODE f(t, y(t))      : fun
%   Initial value       : y0
%   Number of steps     : N
%   Interval (range)    : interval 

% VERBOSE 
verbose = 0; 

% Step size 
h = (interval(2) - interval(1)) / N;
if (verbose)
    fprintf('interval(1) = %d, interval(2) = %d \n', interval(1), interval(2));
    fprintf('h = %d \n', h);
    
end

% Time vector 
t = linspace(interval(1), interval(2), N+1); 

% Solution vector 
y = [y0 zeros(1, N)];

% Non-linear solver parameters
options = optimset; 
options.Display = 'off';
options.TolFun = 1e-9;
options.MaxFunValues = 10000; 

% Solver LOOP 
for i = 1:N
    % Try to find a solution for the nonlinear function F(X) = 0;
    % y(n) is an initial value 
    FUN = @(x) (y(i) + (h * fun(t(i+1), x)) - x); 
    y(i+1) = fsolve(FUN, y(i), options);
end 

