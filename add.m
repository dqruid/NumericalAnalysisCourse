function sum = add(value_1, value_2)
% This functions adds two value and return their sum
sum = value_1 + value_2;
printValue(sum);
end 

function printValue(value)
% This functions prints value
fprintf('The printed value is %d', value);
end 