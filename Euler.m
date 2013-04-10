% Euler Method

%% Problem Description 
% The function : f(t, y(t)) = dy(t)/dt = y
% Analytical solution is y(t) = exp(t)
% Numerical Solution (Euler)

% Initial Value : y(0) = 1

% Step Size : h = 1

% Euler Method : 
% y[n+1] = y[n] + h * f(t[n], y[n])

% f(t0, y0) = f(0, 1) = 1

% y[0] = 1
% y[1] = y[0] + h * f(y[0])
% y[2] = y[1] + h * f(y[1])


% NOTATIONS 
% y[n+1]    = y_np1 "[y] [n] [plus] [1]"
% y[n]      = y_n   "[y] [n]"
% f[n]      = f_n   "[f] [n]"
% h         = h     "Step"
% y[0]      = y_0   "[y] [0] Initial Value"


% Initial Value 
y0 = 1;

% Setting the first iteration value outside the loop 
y_n = y0;

% Interval 
t_start = 0; 
t_end   = 4; 

% Sampling Step 
number_steps = 320;
h = (t_end - t_start) / number_steps;

disp(h);




for iteration = 1:number_steps
    f_n = y_n;
    y_np1 = y_n + (h * f_n); 
    y_n = y_np1;
end 


%fprintf('y_n = %d, y_nm1 = %d, f_nm1 = %d\n', y_n, y_nm1, f_nm1 );
disp(y_np1)



