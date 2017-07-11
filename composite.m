%this function will create a composite image of the origional image

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define function
function [ outImg ] = composite( inImg)
%inImg=imread(inImg);
%define size of input image as variables
[r,c,l]=size(inImg);
%preallocate
outImg=zeros(2*r,2*c,3);
%change image values for original image
for i=1:r
    for j=1:c
        for k=1:3
outImg(i,j,k)=inImg(i,j,k);
        end
    end
end
%change values for rest of composite
outImg([1:r],[c:2*c-1],1)=inImg(:,:,1);
outImg([r:r*2-1],[1:c],2)=inImg(:,:,2);
outImg([r:r*2-1],[c:2*c-1],3)=inImg(:,:,3);

%plot
subplot(1,2,1)
imshow(uint8(outImg))

subplot(1,2,2)
imshow(inImg)