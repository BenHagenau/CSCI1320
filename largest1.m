function [ out ] = largest1(v)
v1=nan(1,length(v)+2);
v1(2:end-1)=v;
v=v1;
zeros=find(v==0);
pos=[];
for i=zeros
   if v(i+1)~=nan && v(i-1)~=nan
       pos=[pos v(i+1) v(i-1)];
   elseif v(i+1)==nan
       pos=[pos v(i-1)];
   elseif v(i-1)==nan
       pos=[pos v(i+1)];
   end
end 
if numel(zeros)==length(v-2)
    out=[];
else
    out=max(pos);
end
            