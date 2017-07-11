%create field with random mines key
key=zeros(6);
for i=1:6
    mine=randi([1,36]);
    key(mine)=1;
end
%disp(key)

%create field that user sees
field=zeros(7);
field(1,:)=[0,1,2,3,4,5,6];
field(:,1)=[0,1,2,3,4,5,6];
disp(field)

%Function: ask user for for coorinates of first guess
function input_coor(r,c)
if field(r,c)==key(r,c)
   field(r,c)= 'Boom'
else
   

%Function: compare input coordinates with key
