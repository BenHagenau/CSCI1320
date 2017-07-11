%This function averages the value of pixels and its surrounding pixels and sets average as the value of the center pixel.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 3/1/16%}

%define function
function [ outImg ] = meanFilter( inImg )
%inImg=imread(inImg);
[r,c,l]=size(inImg);
outImg=zeros(r+2,c+2,l);
%make rim non numbers
outImg(r+1,:,l)=NaN;
outImg(1,:,l)=NaN;
outImg(:,1,l)=NaN;
outImg(:,c+1,l)=NaN;
%nanmean : average all numbers no non numbers
inImg(r+1,:,l)=NaN;
inImg(1,:,l)=NaN;
inImg(:,1,l)=NaN;
inImg(:,c+1,l)=NaN;
%loop through and define out Img
for i=1:r
    for j=1:c
        for k=1:l
            outImg(i+1,j+1,k)=inImg(i,j,k);
        end
    end
end
%set values as averages
for i=2:r-1
    for j=2:c-1
        outImg(i,j,1)=round(sum(nanmean(inImg([i-1:i+1],[j-1:j+1],1),1))/3);
        outImg(i,j,2)=round(sum(nanmean(inImg([i-1:i+1],[j-1:j+1],2),1))/3);
        outImg(i,j,3)=round(sum(nanmean(inImg([i-1:i+1],[j-1:j+1],3),1))/3);
    end
end
%get rid of rim added in the begining
outImg(1,:,:)=[];
outImg(r+1,:,:)=[];
outImg(:,1,:)=[];
outImg(:,c+1,:)=[];

%plot
subplot(1,2,1)
imshow(uint8(outImg))

subplot(1,2,2)
imshow(inImg)




