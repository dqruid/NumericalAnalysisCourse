clc; 
clear all; 

%Similar to anonymous function, inline function is a simple single-line
%user-defined function that is defined without creating a separate func-
%tion (M file). Inline functions are gradually being replaced by
%anonymous functions.

% inline multiplication 
inlineMul = inline('x * y', 'x', 'y'); 

% This is the inline function loop 
disp('INLINE FUNCTION');
tic
FINAL = 0;
for i = 1:1:100
    for j = 1:1:100
        k = inlineMul(i, j);
        FINAL = k;
    end
end
toc
fprintf('FINAL %d \n', FINAL);

% This is the normal function loop
disp('NORMAL FUNCTION')
tic
for i = 1:1:100
    for j = 1:1:100
        k = Mul(i, j);
        FINAL = k;
    end
end
toc
fprintf('FINAL %d\n', FINAL);