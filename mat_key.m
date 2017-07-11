function m_key=mat_key(key)
for i=1:7
    for j=1:7
        if isempty(key{i,j})
            key{i,j}=1;
        end
    end
end
%add NaN
m_key=nan(8);
m_key([1:7], [1:7])=cell2mat(key);
m_key(1,:)=nan;
m_key(:,1)=nan;
%zero=bomb, 1=safe
m1_key=m_key;
for i=2:7
    for j=2:7
        if m_key(i,j)==1
            for m=-1:1
                for n=-1:1
                    m1_key(i,j)=nansum(m_key(i+m,j+n));
                end
            end
        end
    end
end
m_key=m1_key             
        
