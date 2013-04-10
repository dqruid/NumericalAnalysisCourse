% Illustrating Euler Method "Forward Euler" 

clear all;
clc; 

% Number of steps
numSteps = 320; 

% Interval 
startPoint = 0; 
endPoint = 4; 

% Step size 
h = (endPoint - startPoint) / numSteps; 

% Y 
Y = zeros(1, numSteps);

% f(t, y(t))
f = zeros(1, numSteps);

% Y0 
Y0 = 1; 

% Initial value of Y(t)
Y(1) = 1;


for i = 1:numSteps
    f(i) = Y(i);
    Y(i+1) = Y(i) + (h * f(i));
end 

% Reporting function 
fprintf('Step size is %f \n', h); 

for i = 1:length(Y)
    T = startPoint + (h * (i - 1));
    fprintf('Y(%f)[%d] = %f \n', T , (i-1) , Y(i));
end

