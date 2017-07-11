function [ out ] = longest_ones2(s)
count=0;
max=0;
for i=1:length(s)
    if s(i)=='1'
        count=count+1;
    end
    if count>max
        max=count;
    end
    if s(i)=='0'
        count=0;
    end
end
out=max;