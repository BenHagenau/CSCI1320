function out=largest3(v)
v1=nan(1,length(v)+2);
v1(2:end-1)=v;
v=v1;
pos=[];
zeros=find(v==0);
for i=zeros
    if isnan(v(i+1))
        pos=[pos v(i-1)];
    end
    if isnan(v(i-1))
        pos=[pos v(i+1)];
    end
    if isnan(v(i-1))==0 && isnan(v(i+1))==0
        pos=[pos v(i+1) v(i-1)];
    end
    if numel(zeros)==length(v)-2
        pos=[];
    end
end
out=max(pos);