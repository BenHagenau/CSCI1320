function [ outImg ] = addRandomNoise_L( inImg)
%inImg=imread(inImg);
[r,c,l]=size(inImg);
outImg=zeros(r,c,3);
n=randi([-255,255],r,c,3);

for i=1:r
    for j=1:c
        outImg(i,j,1)=inImg(i,j,1) +n(i,j,1);
        outImg(i,j,2)=inImg(i,j,2) +n(i,j,2);
        outImg(i,j,3)=inImg(i,j,3) +n(i,j,3);
    end
end

subplot(1,2,1)
imagesc(uint8(outImg))

subplot(1,2,2)
imagesc(inImg)



