% Bisection root finder  

function [zero, res, nItr, err] = bisectionRootFinder(fun, a, b, TOL, NMAX)
% This method finds a root of a continuous polynomial equation defined on 
% the interval [a, b] where f(a) and f(b) have opposite signs. 

% Inputs 
%   ODE f(t, y(t))                      : fun
%   Interval left (endpoint) value      : a
%   Interval right (endpoint) value     : b
%   Tolerance                           : TOL
%   Maximum number of iterations        : NMAX

% Returns 
%   Zero (alpha)                        : zero
%   Residue                             : res
%   Number of iterarions                : nItr
%   Error                               : err 


% Calculate the values of f(a) and f(b) 
f_a = fun(a); 
f_b = fun(b); 

% If the signs of fun at the intervals of the endpoints are not different, 
% then, we have to select different end points. 
if (sign(f_a * f_b) > 0)
    error('The signs of fun at the interval points must be different'); 
end 
   
% If f_a equals zeros, then a is a zero
if (f_a == 0)
   zero = a; 
   res = 0; 
   err = 0; 
   nItr = 0;
   
   % RETURN 
   return
end

% Also, if f_ b equals zeros, then b is a zero
if (f_b == 0)
   zero = b; 
   res = 0; 
   err = 0; 
   nItr = 0; 
   
   % RETURN 
   return
end

% Calculate the initial error
% Initial error is the half of the length of the interval
err = ((b - a) / 2);

% Initialize the number of iterations to 0 
nItr = 0; 

% Loop until the convergence or maximum number of iterations reached
while (err >= TOL || nItr <= NMAX)
    
    % Increase the number of iterations by 1
    nItr = nItr + 1; 
    
    % a is the left end point of the interval 
    % b is the right end point of the interval 
    % c is the mid-point of the interval
    c = ((a + b) / 2); 
    
    % Calculate the value of the function at c 
    f_c = fun(c); 
    
    % If f_c equals zero, then c is the root.  
    if (f_c == 0)
        zero = c; 
        res = 0;
    end 
    
    % Then, check the signs of the f_a & f_b & f_c
    if (sign(f_c) * sign(f_a) > 0)
        % Set a to C
        a = c; 
    elseif (sign(f_c) * sign(f_a) < 0)
        % Set b to c 
        b = c; 
    else
        error ('There is a bug in the algorithm'); 
    end 
    
    % Error is decreasing linearly by half 
    err = err / 2; 
    
    if (err > TOL) 
       warning(['The bisection mmethod stopped without converging to ', ...
           'the desired tolerance because the maximum number of ', ...
           'iterations has been reached.']); 
    end
end 

% Finally, return the zero as the average of a & b and the residue is
% fun(zero) 
zero = ((a + b) / 2); 
res = fun(zero); 
return 
end 