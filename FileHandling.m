% File Handling 

clc; 
clear all;
close all; 

% VAR 
VAR = 1:1:10;

% Write VAR into a TEXT file 
fileName = 'fileVAR.txt';

% Open the file to write the result into it
[fileID, message] = fopen(fileName, 'w'); % 'w' = write mode

% Write the variable value into the file 
fprintf(fileID, 'The value of VAR is %d \n', VAR);

% Write BINARY data to file 
% fwrite(fileID, VAR);

% Close the file 
fclose(fileID);
