%This function will brighten or darken an image without loops given an image name and
%value of change in brightness.

%{Ben Hagenau, CSCI 1320, SID:105932529, lab 4, section 302%}
%last edited 2-19-16
%define function and input
function [ outImg ] = makebright_NL( inImg, brightness )
%save dimensions of input image
[r,c,l]=size(inImg);
%inImg=imread(inImg); %for use when not used in script

%ensure brightness is in correct range
if -255<=brightness && brightness<=255;
    %preallocate output function
    outImg=zeros(r,c,l);
    %add brightness value to input image
    outImg=inImg+brightness;
    %display subplot of origional image and new image
figure;
subplot(1,2,1);
imagesc(uint8(outImg));

subplot(1,2,2);
imagesc(inImg);
%warning message if brightness is out of the correct range
else
    disp('Brigtness must be between -255 and 255')
end
end