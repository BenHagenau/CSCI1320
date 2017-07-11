function [ outImg ] = famousMe(inImg)


inImg=imread(inImg);
mars=imread('mars.jpg');
[rows col]=size(inImg)
[rowsm colm]=size(mars)
[r,c,l]=size(inImg);
[rm,cm,lm]=size('mars.jpg');
% mask=zeros(rm,cm,lm);

subplot(1,4,1)
imshow(inImg)
subplot(1,4,3)
imshow(imread('mars.jpg'))
%for loop with if statemet inside. Runs through all indeices of mars and
%if indecy is same as indicy of me then raplace.  
mask=rgb2gray(inImg);
me=find(mask>50);
mask(me)=1;
subplot(1,4,2)
imshow(mask)

for i=me
    if mask==1
        mars(me)=inImg(me);
    end
end

subplot(1,4,4)
imshow(mars)