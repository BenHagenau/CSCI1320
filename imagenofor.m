%for i = 1:6
%image(4,i,1)=[i]
%image(4,i,2)=[i]
%image(4,i,3)=[i]

l(:,:,1)=[1,1,1,0,0,1; 1,1,1,0,0,1; 1,1,1,0,0,1]
l(:,:,2)=[0,.5,1,1,0,0; 0,.5,1,1,0,0; 0,.5,1,1,0,0]
l(:,:,3)=[0,0,0,0,1,1; 0,0,0,0,1,1; 0,0,0,0,1,1]
 image(l)
 
 