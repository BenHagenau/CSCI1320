function [ out ]=longest_one(s)
longest=0;
count=0;
for i=1:length(s)    
    if s(i)=='1' 
        count=count+1;
    end
    if count>longest 
        longest=count;
    end
    if s(i)=='0'
        count=0;
    end

end
out=longest;
end