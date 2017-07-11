function [ outImg ] = img_crop( inImg, x1, y1, x2, y2 )
%inImg=imread(inImg);
[r,c,l]=size(inImg);
%x1 < x2 and y1 < y2
 if x1>0 && x2<=c && y2>0 && y1<=r && x1< x2 && y1<y2
    
    outImg(:,:,1)=inImg([x1:r-x2],[y2:c-y1],1);
    outImg(:,:,2)=inImg([x1:r-x2],[y2:c-y1],2);
    outImg(:,:,3)=inImg([x1:r-x2],[y2:c-y1],3);
    subplot(1,2,1)
    imshow(outImg)
    subplot(1,2,2)
    imshow(inImg)
else
    disp('try again')
end