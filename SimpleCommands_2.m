% Clear the screen 
clc; 

vec_1 = [1 2 3];
vec_2 = [1;2;3];

% Not true, as matrix dimensions must agree 
% vec_3 = vec_1 + vec_2

% True, because we got the transpose of the vector 
vec_3 = vec_1 + vec_2';
vec_4 = vec_1 * vec_2; 

% Not true, because dimensions are different   
%vec_4 = vec_1 * vec_2'; 

% This multiplication is on element basis 
vec_5 = vec_1 .* vec_2';

% Matrices - Transpose 
mat_1 = [1 2 3; 4 5 6; 7 8 9];
mat_2 = mat_1';
mat_3 = 2 * mat_1;
mat_4 = 2 .* mat_1;



