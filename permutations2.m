function [ out ] = permutation2(n)
v=1:n;
vec=zeros(1,n);
for i=1:n
    random=randi(length(v));
    vec(i)=v(random);
    v(random)=[];
end
out=vec;
end