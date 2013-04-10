clc; 
clear all;

% Note '...' is similar to \ in C to have a new line 
returnChoise = menu ('Menu Header -> This is a Nice Menu', ... 
'option 1', ...
'option 2', ...
'option 3');

% The returnChoise variable is an int representing the number of the choise

switch (returnChoise)
    case (1)
        fprintf('The selected choise was 1 \n');
    case (2)
        fprintf('The selected choise was 2 \n');
    case (3)
        fprintf('The selected choise was 3 \n');
    otherwise % Error handling case ... 
        fprintf('No valid selected choise \n');
end 
        
