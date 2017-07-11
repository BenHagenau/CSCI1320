%This function creates the field
function field=make_field()
%Preallocate
field=cell(8);
%Add field labels
for i=1:8
    field(i,1)={i-1};
    field(1,i)={i-1};
end
end
