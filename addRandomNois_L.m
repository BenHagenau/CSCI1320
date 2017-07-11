%This function adds random noise to an image with loops

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define function 
function [ outImg ] = addRandomNoise_L( inImg)
%inImg=imread(inImg);
%define size of input image as variables
[r,c,l]=size(inImg);
%preallocate output image
outImg=zeros(r,c,3);
%create random matrix of dimensions of input image. Range -255 to 255
n=randi([-255,255],r,c,3);
%loop through each index and add its affiliated random integer
for i=1:r
    for j=1:c
        outImg(i,j,1)=inImg(i,j,1) +n(i,j,1);
        outImg(i,j,2)=inImg(i,j,2) +n(i,j,2);
        outImg(1,j,3)=inImg(i,j,3) +n(i,j,3);
    end
end
%plot
subplot(1,2,1)
imagesc(uint8(outImg))

subplot(1,2,2)
imagesc(inImg)