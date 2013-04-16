% Forward Euler Solver 

function [t, y] = forwardEulerSolver(fun, interval, y0, N)
% Forward Euler Solver 
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
y = [y0 zeros(size(y0, 1), N)];


% Solver LOOP 
for i = 1:N
    y(:, i+1) = y(:,i) + (h * fun(t(i), y(:, i))); 
end 
