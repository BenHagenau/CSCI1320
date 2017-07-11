function out=bullseye3(n)
mat=zeros(n);
for i=1:(n+1)/2
    mat([i:end-i+1],i)=(n+1)/2-i+1;
    mat(i,[i:end-i+1])=(n+1)/2-i+1;
    mat([i:end-i+1],[i:end-i+1])=(n+1)/2-i+1;
end
out=mat;