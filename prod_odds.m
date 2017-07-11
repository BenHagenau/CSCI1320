
function out = prod_odds(n)

x=(1:n);
for i=1:2:n;
    odds(i)=x(i);
end
p=find(odds~=0);
out=prod(p);
end
