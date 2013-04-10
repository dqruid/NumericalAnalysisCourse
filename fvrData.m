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

% % Display the real and the imaginary spectrums 
% realSpec = real(fourierImage); 
% figure(2); 
% imshow((realSpec) .* (realSpec)); 
% 
% imgSpec = imag(fourierImage); 
% figure(3); 
% imshow((imgSpec) .* (imgSpec)); 
% 
% % Display the magnitude and the phase 
% magSpec = sqrt(realSpec.^2 + realSpec.^2);  
% figure(4);
% imshow((magSpec) .* (magSpec)); 
% 
% phaseSpec = atan2(imgSpec,imgSpec);
% figure(5); 
% imshow((phaseSpec) .* (phaseSpec)); 
% 
% % Display the sptial images corresponding to each ...
% figure(6); 
% imshow(ifft2(realSpec)/500);
% 
% figure(7); 
% imshow(ifft2(imgSpec));
% 
% figure(8); 
% imshow(ifft2(magSpec)/1000);
% 
% figure(9); 
% imshow(ifft2(phaseSpec));

[xImg, yImg] = size(fourierImage);

maskImage = zeros (xImg, yImg); 

sX = (xImg / 2) - (xImg / 4);
eX = (xImg / 2) + (xImg / 4);

sY = (yImg / 2) - (yImg / 4);
eY = (yImg / 2) + (yImg / 4);

% Mask image 
maskImage(sX:eX, sY:eY) = 1; 
figure 
imshow(maskImage); 

% Spectrum filtration 
filetredImage = maskImage .* fftshift(fourierImage); 

% Reconstructed image 
reconsImage = ifft2(filetredImage) / (xImg/1.5); 
reconsImage = sqrt(reconsImage.^2 + reconsImage.^2);
figure
imshow((reconsImage));

% Original reconstructed image 
OrigReconsImage = ifft2(fourierImage) / (xImg/1.5); 
OrigReconsImage = sqrt(OrigReconsImage.^2 + OrigReconsImage.^2);
figure
imshow(OrigReconsImage);

% Gaussian filter 
sigma = 60; 
xFilter = fspecial('gaussian',[xImg yImg], sigma);
figure 
plot(xFilter);

% Gaussian mask 
gMask = xFilter .* maskImage * 65; 
figure
imshow (gMask);

% Reconstructed image from gMask 
gausRecFourier = gMask .* fftshift(fourierImage); 
gausRecImage = ifft2(gausRecFourier); 
gausRecImage = sqrt(gausRecImage.^2 + gausRecImage.^2);
figure
imshow((gausRecImage));










