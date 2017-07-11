clear all; clc


g=zeros(256,256,3);
for r=1:256
    for c=1:256
    g(r,c,1)=(1-(r-1)/255)-((c-1)/255);
    end
end
for i=1:256
    for j=1:256
    g(i,j,2)=(1-(i-1)/255)-((j-1)/255);
    end
end
for k=1:256
    for m=1:256
    g(k,m,3)=(1-(k-1)/255)-((m-1)/255);
    end
end
g=rot90(g);

imagesc(g)



