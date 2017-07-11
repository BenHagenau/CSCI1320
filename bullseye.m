function [ out ]=bullseye(n)
x=zeros(n);
value=(n+1)/2;
% x(1,[1:end])=value;
% x([1:end],1)=value;
% x(end,[1:end])=value;
% x([1:end],end)=value;
% 
% x(2,[2:end-1])=value-1;
% x([2:end-1],2)=value-1;
% x(end-1,[2:end-1])=value-1;
% x([2:end-1],end-1)=value-1;
% 
% x(3,[3:end-2])=value-2;
% x([3:end-2],3)=value-2;
% x(end-2,[3:end-2])=value-2;
% x([3:end-2],end-2)=value-2;
for i=1:value
    x(i,[i:end-i+1])=value-i+1;
    x([i:end-i+1],i)=value-i+1;
    x(end-i+1,[i:end-i+1])=value-i+1;
    x([i:end-i+1],end-i+1)=value-i+1;
end
out=x;
end