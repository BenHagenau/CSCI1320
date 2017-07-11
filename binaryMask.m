function [ outImg] = binaryMask( inImg )
inImg=imread(inImg);
[r,c,l]=size(inImg);
outImg=zeros(r,c);

inImg_w=find(inImg(:,:,1)>150);
inImg_b=find(inImg(:,:,1)<100);
outImg(inImg_w)=0;
outImg(inImg_b)=255;

subplot(1,2,1)
imshow(uint8(outImg))
subplot(1,2,2)
imshow(inImg)