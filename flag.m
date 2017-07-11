%This function creates the german flag out of three chosen images

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define function
function [ outImg ] = flag( inImg1, inImg2,inImg3)
%flag of Germany
%create image matrices
inImg1=imread(inImg1);
inImg2=imread(inImg2);
inImg3=imread(inImg3);
%find sizes and save as variables
[r1,c1,l]=size(inImg1);
[r2,c2,l]=size(inImg2);
[r3,c3,l]=size(inImg3);
%find the max number of columns that the flag can be 
num_c=[c1 c2 c3];
columns=min(num_c);
%%preallocate output image
outImg=zeros(300,columns,3);
%find average middle values
m1=floor(r1/2);
m2=floor(r2/2);
m3=floor(r3/2);
%loop through the output image and change values to input images
for i=1:100
    outImg(i,:,1)=inImg1(i, [1:columns], 1);
    outImg(i,:,2)=inImg1(i, [1:columns], 1);
    outImg(i,:,3)=inImg1(i, [1:columns], 1);
end
for i=101:200
    outImg(i,:,1)=inImg2(i,[1:columns],1);
end
for i=201:300
    outImg(i,:,1)=inImg3(i,[1:columns],1);
    outImg(i,:,2)=inImg3(i,[1:columns],2);
end
%plot
figure
imshow(uint8(outImg));







