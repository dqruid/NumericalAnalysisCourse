function [] = SwitchCase(value)
switch (value)
    case 1
        fprintf('The value is %d', value);
    case 2
        fprintf('The value is %d', value);
    otherwise; % default in 'C'
        fprintf('Otherwise -> Not 1 nor 2'); 
end % switch case 
end % function 
