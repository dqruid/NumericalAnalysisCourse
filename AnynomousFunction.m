clc; 
clear all; 

% Aynynomous functions are used to provide nice performance for small 
% functions

% functionName = @ (var1,var2,...) expression

% Anynomous multiplication 
anynomousMul = @(x,y) (x * y); 

% This is the anynomous function loop 
disp('ANYNOMOUS FUNCTION');
tic
FINAL = 0;
for i = 1:1:1000
    for j = 1:1:1000
        k = anynomousMul(i, j);
        FINAL = k;
    end
end
toc
fprintf('FINAL %d \n', FINAL);

% This is the normal function loop
disp('NORMAL FUNCTION')
tic
for i = 1:1:1000
    for j = 1:1:1000
        k = Mul(i, j);
        FINAL = k;
    end
end
toc
fprintf('FINAL %d\n', FINAL);




