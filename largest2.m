function [ out ] = largest2(v)
v1=nan(1,length(v)+2)
v1(2:length(v)+1)=v;
v=v1;
zeros=find(v==0);
pos=[];
for i=zeros
    if isnan(v(i-1))
        pos=[pos v(i+1)];
    end
    if isnan(v(i+1))
        pos=[pos v(i-1)]
    end
    if isnan(v(i+1))==0 && isnan(v(i-1))==0
        pos=[pos v(i+1) v(i-1)]
    end
end
if numel(zeros)==length(v)-2
    pos=[];
end
out=max(pos);