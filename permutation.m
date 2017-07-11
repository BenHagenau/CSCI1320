function [ out ]=permutation(n)
v=1:n;
out=zeros(1,n);
for i=1:length(v)
    random=randi(length(v));
    out(i)=v(random);
    v(random)=[];
end
end