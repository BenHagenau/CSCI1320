function [ outImg ] = imgcrop( inImg, x1, y1, x2, y2 )
%inImg=imread(inImg);
[r,c,l]=size(inImg);

    
    outImg(:,:,1)=inImg([x1:r-x2],[y2:c-y1],1);
    outImg(:,:,2)=inImg([x1:r-x2],[y2:c-y1],2);
    outImg(:,:,3)=inImg([x1:r-x2],[y2:c-y1],3);
   

