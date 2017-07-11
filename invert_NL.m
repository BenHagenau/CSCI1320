function [ outImg ] = invert_NL( inImg)
%inImg=imread(inImg);
[r,c,l]=size(inImg);
outImg=zeros(r,c,3);

outImg=255-inImg;

subplot(1,2,1)
imagesc(uint8(outImg));

subplot(1,2,2)
imagesc(inImg)