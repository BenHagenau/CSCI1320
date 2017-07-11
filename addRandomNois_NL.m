%this function adds random noise to an image without loops

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define funciona
function [ outImg ] = addRandomNoise_NL( inImg)
%inImg=imread(inImg);
%define size of input image as variables
[r,c,l]=size(inImg);
%preallocate output image
outImg=zeros(r,c,3);
%create random matrix with same size as input image. range -255 to 255
n=randi([-255,255],r,c,l);
%add random matrix to input image
outImg(:,:,1)=double(inImg(:,:,1))+double(n(:,:,1));
outImg(:,:,2)=double(inImg(:,:,2))+double(n(:,:,2));
outImg(:,:,3)=double(inImg(:,:,3))+double(n(:,:,3));

%plot
subplot(1,2,1)
imagesc(uint8(outImg))

subplot(1,2,2)
imagesc(inImg)