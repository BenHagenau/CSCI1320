function [ out ] = longest_ones1(v)
count=0;
max=0;
for i=1:length(v)
    if v(i)=='1'
        count=count+1;
    end
    if count>max
        max=count;
    end
    if v(i)=='0'
        count=0;
    end
end
out=max;