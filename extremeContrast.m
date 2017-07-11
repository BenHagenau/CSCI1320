%this function creates extreme contrast in an image

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define funtion
function [ outImg] = extremeContrast( inImg )
%inImg=imread(inImg);
%define variables as size of input image
[r,c,l]=size(inImg);
%preallocate
outImg=zeros(r,c,3);
%find max values
max_rows=max(inImg);
max_row_values=max(max_rows);
max_value=max(max_row_values);

%mean=max_value/2;
%find image values that will be contrasted
zero=find(inImg(:,:,:)<128);
one=find(inImg(:,:,:)>=128);

%change values
outImg(zero)=0;
outImg(one)=1;

%plot
subplot(1,2,1)
imagesc(outImg)

subplot(1,2,2)
imagesc(inImg)