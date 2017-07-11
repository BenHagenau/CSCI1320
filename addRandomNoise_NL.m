function [ outImg ] = addRandomNoise_NL( inImg)
%inImg=imread(inImg);
[r,c,l]=size(inImg);
outImg=zeros(r,c,3);
n=randi([-255,255],r,c,l);
outImg(:,:,1)=double(inImg(:,:,1))+double(n(:,:,1));
outImg(:,:,2)=double(inImg(:,:,2))+double(n(:,:,2));
outImg(:,:,3)=double(inImg(:,:,3))+double(n(:,:,3));

subplot(1,2,1)
imagesc(uint8(outImg))

subplot(1,2,2)
imagesc(inImg)