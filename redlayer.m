% r=zeros(256,256,3);
% for i=(256:-1:1)
%     r(i,:,1)=i;
%     r(i,:,2)=i;
%     r(i,:,3)=i;
% end
% r=rot90(rot90(r));
% imagesc(uint8(r));

x=zeros(256,256,3);
red=1;
blue=1;
green=0;

for i=1:256;
    x(i,:,1)=red;
    red=red-(1/255);
end
for j=1:256;
    x(:,j,3)=blue;
    blue=blue-1/255;
end
for k=1:256;
    x(:,k,2)=green;
    green=green+1/255;
end
imagesc(x)
