%This function creates the key
function key=make_key(mine)
%Preallocate and give rim of NaN
key1=zeros(9);
key1(1,:)=NaN;
key1(:,1)=NaN;
key1(9,:)=NaN;
key1(:,9)=NaN;
%Label mines
key1(mine)=1;
%Make mine value
key=key1;
%Make values for how many mines are incontact with specific indecies
for i=(2:8)
    for j=(2:8)
        if key1(i,j)==0
            mat=key1((i-1):(i+1),(j-1):(j+1));
            mat=reshape(mat,1,9);
            key(i,j)=nansum(mat);
        end
    end
end
key(mine)=-1;
end
















% %preallocate
% key=cell(7);
% %create field with labels
% for i=1:7
%     key(i,1)={i-1};
%     key(1,i)={i-1};
% end
% %place mines
% for i=x
%     key{i}=0;
% end


