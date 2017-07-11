function [ out ] = isPalindrome2(s)
s=lower(s);
count=0;
for i=1:round(length(s)/2)
    if s(i)==s(length(s)-i+1)
        count=count+1
    end
end
out=count==round(length(s)/2);