inImg=imread('lena1.jpg');
[r,c,l]=size(inImg);
outImg=zeros(r,c,3);

outImg(:,:,1)=inImg(:,:,1);
outImg(:,:,2)=inImg(:,:,2);
outImg(:,:,3)=inImg(:,:,3);
imshow(uint8(outImg))