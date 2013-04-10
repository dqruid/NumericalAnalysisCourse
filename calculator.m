function [sum, difference , product, quotient, remainder] ... 
= calculator(value_1, value_2)
% This function serves as a simple calculator to calculate the addition, 
% subtraction, multiplication, division of two variables.

sum = add(value_1, value_2);
difference = sub(value_1, value_2);
product = mul(value_1, value_2);
quotient = div(value_1, value_2);
remainder = mod_(value_1, value_2); 

end

function sum = add(value_1, value_2)
% Addition function 
sum = value_1 + value_2;
end

function difference = sub(value_1, value_2)
% Subtraction function 
difference = value_1 - value_2;
end

function product = mul(value_1, value_2)
% Multipliaction function 
product = value_1 * value_2;
end

function quotient = div(value_1, value_2)
% Division function for QUOTIENT
quotient = value_1 / value_2;
end

function quotient = mod_(value_1, value_2)
% Division function for REMAINDER
quotient = mod(value_1, value_2);
end


