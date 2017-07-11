function [ out ]=isPalindrome(s)
count=[];
s=lower(s);
for i=1:round(length(s)/2)
    if s(i)==s(length(s)-i+1)
        count=[count 1];
    else 
        count=[count 0];
    end
end
out=sum(count)==round(length(s)/2);
end