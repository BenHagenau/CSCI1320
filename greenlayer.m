x=zeros(256,256,3);
v=0;
green=1;
for v=256:-1:1;
    for m=0:1/255:255;
    x(v,:,2)=1-m;
    end
end
imagesc(uint8(x))
