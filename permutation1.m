function [ out ]=permutation1(n)
v=(1:n);
vec=zeros(1,n);
for i=1:n
    rand=randi(n-i+1);
    vec(i)=v(rand);
    v(rand)=[];
end
out=vec;