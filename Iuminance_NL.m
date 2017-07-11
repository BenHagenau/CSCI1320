%this function will create a gray scale image without loops.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define function
function [ outImg ] = luminance_NL( inImg)
%inImg=imread(inImg);
%define variable for size of input image
[r,c,l]=size(inImg);
%preallocate output image
out=zeros(r,c);
%create out image a gray scale of the input image
 %outImg=rgb2gray(inImg);
out(:,:,1)=inImg(:,:,1)*.299
out(:,:,2)=inImg(:,:,2)*.587
out(:,:,3)=inImg(:,:,3)*.114
outImg(:,:,1)=out(:,:,1)+out(:,:,2)+out(:,:,3);
%plot original and edited images
subplot(1,2,1)
imshow(outImg)

subplot(1,2,2)
imshow(inImg)