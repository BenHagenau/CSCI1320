function [ out ] = checkerBoard1(n)
mat=zeros(n);
for i=0:n
    for j=0:n
    mat(2*i+1,2*j+1)=1;
    mat(2*(i+1),2*(j+1))=1;
    end
end
out=mat((1:n),(1:n));