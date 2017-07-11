clear all; clc
x=zeros(256,256,3);

for r=256:-1:1
    for c=1:256
    x(r,c,2)=((c-1)/255)-(1-(r-1)/255);
    end
end

imagesc(x)