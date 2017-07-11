%this function will create a gray scale image without loops.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define function
function [ outImg ] = luminance_NL( inImg)
%inImg=imread(inImg);
%define variable for size of input image
[r,c,l]=size(inImg);
%preallocate output image
outImg=zeros(r,c);
%create out image a gray scale of the input image
 outImg=rgb2gray(inImg);
%plot original and edited images
subplot(1,2,1)
imshow(outImg)

subplot(1,2,2)
imshow(inImg)