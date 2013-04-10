% Operations on the workspace 
clc;
clear all; 

% Some Variables 
X = 1;
Y = 1:1:10; 
A = [1 2; ... 
     3 4; ... 
     5 6];

% Save workspace to Workspace_1 ".mat"
save Workspace_1

% Clearing ... 
clc; 
clear all;

% Load Workspace_1 ".mat"
load Workspace_1

fprintf( ['The results of test  are such that d of the ', ...
'cats are older than  years old.\nThe results of test ', ... 
' are such that  of the dogs are older than d years ', ...
'old.\nThe results of test  are such that  of the ', ...
'fish are older than  years old. \n']);

