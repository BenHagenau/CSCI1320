%create field
function field(x)
%preallocate
key=cell(7);
%create field with labels
for i=1:7
    key(i,1)={i};
    key(1,i)={i};
end