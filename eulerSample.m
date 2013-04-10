function [T, Y] = eulerSample (inFun, range_0, range_1, y0, M)

% inFun is the function entered as range_0 string 'inFun' 
% range_0 and range_1 are the left and right endpoints 
% y0 is the initial condition y(range_0) 
% M is the number of steps
% T is the vector of abscissas and Y is the vector of ordinates

% Step Size
h=(range_1-range_0)/M; 

% Time Vector
T=zeros(1,M+1); 

% Function 
Y=zeros(1,M+1); 

% Range 
T=range_0:h:range_1; 

% Initial Value 
Y(1)=y0;

% LOOP 
for j=1:M 
    Y(j+1)=Y(j)+h*feval(inFun,T(j),Y(j));
end

end