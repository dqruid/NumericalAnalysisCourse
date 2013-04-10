clear all; 
close all; 
clc; 

% Read the color image 
fvrColorImageInput = imread('/Computer/1.0.png');

% Resized image 
fvrColorImage = imresize(fvrColorImageInput, [512 512]); 

% Convert it into gray scale image 
fvrGSImage = rgb2gray(fvrColorImage);

% Show the image 
figure(1);
imshow(fvrGSImage); 

% Get the spectrum of the spatial image 
fourierImage = fft2(fvrGSImage); 

% Size 
[xImg, yImg] = size(fourierImage);

% Gaussian filter 
sigma = 10; 
gFilter = fspecial('gaussian',[xImg yImg], sigma);
figure 
plot(gFilter);

gausRecFourier = gFilter .* fftshift(fourierImage); 
gausRecImage = ifft2(gausRecFourier); 
gausRecImage = sqrt(gausRecImage.^2 + gausRecImage.^2);
figure
imshow((gausRecImage));

