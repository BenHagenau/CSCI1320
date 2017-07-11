b=zeros(256,256,3);
for i=(256:-1:1)
    b(i,:,1)=i;
    b(i,:,2)=i;
    b(i,:,3)=i;
end
b=rot90(b);
imagesc(uint8(b));