%This function asks the user to input coordinates and make sure that it is on the field and
%not yet chosen
function [coor] = input_coor(field,selected)
r=[];
c=[];
r=input('Enter row: ');
c=input('Enter column: ');
%Ensure that input values are not empty, used, or off of board. Recurse if
%invalid coordinates are entered. Adjust for rim.
if isempty(r) || isempty(c) 
    disp('Please enter coordinates')
    [coor] = input_coor(field,selected);
else
    if r<1 || r>7 || c<1 || c>7 || selected(r+1,c+1)==9 || isempty(field{r+1,c+1})~=1 
        display('The coordinates entered are not on the field or have already been selected')
        [coor] = input_coor(field,selected);
    else 
        coor=[r+1,c+1];
    end
end 
end


