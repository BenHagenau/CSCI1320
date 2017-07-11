%This script will make a 4x6x3 matrix with each column as a single color in
%rainbow order.

%{Ben Hagenau, SID: 105932529, CSCI 1320, lab 5, Section: 302%}
%{Last edited: 2/16/16%}

%below is the image that will be made without using for loops.
%x(:,:,1)=[1,1,1,0,0,1; 1,1,1,0,0,1; 1,1,1,0,0,1];
%x(:,:,2)=[0,.5,1,1,0,0; 0,.5,1,1,0,0; 0,.5,1,1,0,0];
%x(:,:,3)=[0,0,0,0,1,1; 0,0,0,0,1,1; 0,0,0,0,1,1];

%clear the command window and the workspace
clc 
clear 
%stragey: create each 2D layer one at a time. All rows on each layer are
%the same so the number of imbeded for loops used for each row is defined
%by the number of times that the element value changes. After each layer of
%matrix x is made reshape it to be 4x6 with the built in repmat() function.

%create the first layer so that each row is [1,1,1,0,0,1]. Define the first
%three elements as 1, then define elemens four and five as 0, then define element
%six as 1.
for a=1:3
    x(:,a,1)=[1];
    for b=4:5;
        x(:,b,1)=[0];
        for c=6;
            x(:,c,1)=[1];
%create the second layer so that each row is [0,.5,1,1,0,0]. Define the
%first element as 0. Then define element two as .5. Then define element
%three and four as 1. Then define element five and six as 0.
            for d=1;
                x(:,d,2)=[0];
                for e=2;
                    x(:,e,2)=[.5];
                    for f=3:4;
                        x(:,f,2)=[1];
                        for g=5:6;
                            x(:,g,2)=[0];
%create the third layer so that each row is [0,0,0,0,1,1]. Define the first
%four elements as 0. Then define the last two elements as 1. 
                            for h=1:4;
                                x(:,h,3)=[0];
                                for i=5:6;
                                    x(:,i,3)=[1];
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
%Replicate this 1x6x3 matrix four times veritically so that it becomes a
%4x6x3 matrix. Then produce the image using the built in image() function
y=repmat(x,4,1);
imagesc(y)