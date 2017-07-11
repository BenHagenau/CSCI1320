function tf = mono_increase(x)
if x(2)==0
    tf=false
else
if x==0
    tf=true
else
for i=2:numel(x)
    if x(i)>x(i-1)
        T=1;
    else 
        T=0;
    end
end
if T==1
    tf=true
else
    tf=false
end

end

