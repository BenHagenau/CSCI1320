function [ out ] = largest(vec)
nvec=nan(1,length(vec)+2);
nvec(2:end-1)=vec;
vec=nvec;
zeros=find(vec==0);
pos=[];
for i=zeros
    if isnan(vec(i-1))~=1
        pos=[pos vec(i-1)];
    end
    if isnan(vec(i+1))~=1
        pos=[pos vec(i+1)];
    end
end
if length(zeros)==length(vec)-2
    out=[];
else
out=max(pos);
end
