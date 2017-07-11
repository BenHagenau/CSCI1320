function [ out ]=checkerBoard(n)
x=zeros(n);
[r,l]=size(x);
for i=0:r
    for j=0:r
    x(2*i+1,2*j+1)=1;
    x(2*(i+1),2*(j+1))=1;
    end
end
out=x([1:n],[1:n]);
end
