function [ outImg ] = luminance_L( inImg)
%I	=	0.299R	+	0.587G	+	0.114B
%inImg=imread(inImg);
[r,c,l]=size(inImg);
outImg=zeros(r,c);
for i=1:r
    for j=1:c
        I(i,j,1)=inImg(i,j,1).*.299+inImg(i,j,2).*.587+inImg(i,j,3).*.114;
    end
end
outImg=I;
subplot(1,2,1);
imshow(uint8(outImg));

subplot(1,2,2);
imshow(inImg);