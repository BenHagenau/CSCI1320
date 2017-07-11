function [ outImg ] = makeBright( inImg, brightness )
[r,c]=size(inImg);
if -255<=brightness && brightness<=255;
    outImg=zeros(r,c,3);
    outImg=inImg+brightness;
figure;
subplot(1,2,1);
imagesc(uint8(outImg));

subplot(1,2,2);
imagesc(inImg);
else
    disp('Brigtness must be between -255 and 255')
end
end