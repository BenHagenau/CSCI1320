%This script will create an image that has a color gradiet running from
%purple to blue, then green, then yellow in a counter clockwise fashion and
%is balanced.

%{Ben Hagenau, CSCI 1320, SID:105932529, lab 4, section 302%}
%last edited 2-19-16

%preallocate matrix x
clear all; clc
x=zeros(256,256,3);

%Layer 1: all columns in each row hold the same value. Row values start from one and
%run to zero from top to bottom by a gradient of 1/255.
for i=1:256;
    x(i,:,1)=1-((i-1)/255);
end
%Layer 2: all rows in each column hold the same value. Column values start from
%zero and run to one from left to right.
for k=1:256;
    x(:,k,2)=0+((k-1)/255);
end
%Layer 3: all rows in each column hold the same value. Column values start from
%one and run to zero from left to right.
for j=1:256;
    x(:,j,3)=1-((j-1)/255);
end
%produce composite image and plot it on a sub-plot.
subplot(2,2,4)
imagesc(x)

%create the red layer as its own image in gray scale for display.
r=zeros(256,256,3);
for i=(1:256)
    r(i,:,1)=1-((i-1)/255);
    r(i,:,2)=1-((i-1)/255);
    r(i,:,3)=1-((i-1)/255);
    
end
%produce red layer as a gray scale image and plot it on a sub-plot.
subplot(2,2,1)
imagesc(r);

%create the green layer as its own image in gray scale for display.
g=zeros(256,256,3);
for i=(1:256)
    g(:,i,1)=0+((i-1)/255);
    g(:,i,2)=0+((i-1)/255);
    g(:,i,3)=0+((i-1)/255);
end
%produce green layer as a gray scale image and plot it on a sub-plot.
subplot(2,2,2)
imagesc(g);


%create the blue layer as its own image in gray scale for display.
b=zeros(256,256,3);
for i=(1:256)
    b(:,i,1)=1-((i-1)/255);
    b(:,i,2)=1-((i-1)/255);
    b(:,i,3)=1-((i-1)/255);
end
%produce the blue layer as a gray scale image and plot it on a sub-plot.
subplot(2,2,3)
imagesc(b);


