function [ out ] = bullseye2(n)
mat=zeros(n);
for i=1:(n+1)/2
    mat([i:n-i+1],i)=((n+1)/2)-i+1;
    mat(i,[i:n-i+1])=((n+1)/2)-i+1;
    mat([i:n-i+1],[i:n-i+1])=((n+1)/2)-i+1;
end
out=mat;