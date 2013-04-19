function [p, res, numIter] = fixedPoint(phi, x0, TOL, NMAX)
% FIXEDPOINT Fixed point iterations.
%   P = FIXEDPOINT( PHI, X0, TOL, NMAX ) tries to find the fixed point P of the
%   continuous and differentiable function PHI using fixed point iterations
%   starting from X0. PHI accepts real scalar input x and returns a real
%   scalar value. If the search fails an errore message is displayed.
%
%   [P, RES, NITER] = FIXEDPOINT(PHI,...) returns the value of the residual in P
%   and the iteration number at which P was computed.
%

% Set the fixed point to xo in the first iteration  
p = x0; 

% Iitialize the number of iterations 
numIter = 0; 

% Initialize the residue ??? 
res = TOL + 1; 

while (abs(res) > TOL && numIter <= NMAX)
    
    % Get the value at the point p 
    p = phi(p); 
    
    % Increase the number of iterations 
    numIter = numIter + 1; 
    
    % Get the residue 
    res = phi(p) - p; 
end 

% If we didn' reach a good convergence with the given tolerance and max
% number of iterations, the display an error message 
if (numIter > NMAX)
    fprintf(['ERROR: fixedPoint stopped without converging to the desired \n', ...
        'tolerance because the maximum number of iterations has been reached. \n']);
end


return;