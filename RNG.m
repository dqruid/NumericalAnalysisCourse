clc; 

% Random Number Generator for a single value 
minValue = 1;
maxValue = 10;

value = randi([minValue maxValue],1,1);
fprintf('The RGN value is %d\n', value);

vectorLenght = 10;
vector = randi([minValue maxValue], vectorLenght, 1);

