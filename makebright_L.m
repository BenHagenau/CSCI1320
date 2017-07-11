%This function will brighten or darken an image with loops given an image name and
%value of change in brightness. 

%{Ben Hagenau, CSCI 1320, SID:105932529, lab 4, section 302%}
%last edited 2-19-16

%define function
function [ outImg ] = makebright_L( inImg, brightness )
%inImg=imread(inImg); %for use when not used in script
%get dimensions of input image
[r,c,l]=size(inImg);
%preallocate outImg
outImg=zeros(r,c,3);
%make sure that brightness input is within range
if -255<=brightness && brightness<=255
    for i=1:r
        for j=1:c
            %edit brightness of each layer of input image and save as
            %product image
             outImg(i,j,1)=inImg(i,j,1)+brightness;
             outImg(i,j,2)=inImg(i,j,2)+brightness;
             outImg(i,j,3)=inImg(i,j,3)+brightness;
        end
    end
    %pre-define figure and plot origional and product images on a subplot
    figure;
    subplot(1,2,1)
    imagesc(uint8(outImg));
    
    subplot(1,2,2)
    imagesc(inImg)
    %error message for brightness values out of range.
else
    disp('Brigtness must be between -255 and 255')
end
end