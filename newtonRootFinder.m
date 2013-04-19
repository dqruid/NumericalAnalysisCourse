% Newton root finder 
function [x, r, n, inc] = newtonRootFinder(F, dF, x0, TOL, NMAX)
% NEWTON Find the zeros of a nonlinear equations.
%   [X] = NEWTON(F,DF,X0,TOL,NMAX) tries to find the zero x of the
%   continuous and differentiable function F nearest to x0 using
%   the Newton method. DF is a function which take x and return the derivative of F.
%   If the search fails an error message is displayed.
%

%   [X,R,N,INC] = NEWTON(F,DF,X0,TOL,NMAX) returns the value of the
%   residual R in X, the number of iterations N required for computing X and
%   INC the increments computed by Newton.


% Number of iterations 
n = 0;

% Starting from x0 as an initial guess
x(n+1) = x0;

% Residue 
r = F(x0);

fprintf('root | nIter | res | inc \n'); 

err= norm(r);

% Iteration loop 
while(err > TOL && n <= NMAX)
    
    fprintf('%f | %f | %f \n', x(n+1), n, r);
    % New value of x
    term1 = x(n+1); 
    term2 = F(x(n+1)) / dF(x(n+1)); 
    x(n+2) = term1 - term2; 
        
    inc(n+1) = abs( F(x(n+1)) / dF(x(n+1)));
    
    err = inc(n+1);
    
    % Residue 
    r = F(x(n+2));
    n = n + 1; 
end

% We are not converging with that TOL value 
if (n > NMAX)
    fprintf(['Newton stopped without converging to the desired tolerance ' ...
         ' because the maximum number of iterations was reached \n']);
end

return