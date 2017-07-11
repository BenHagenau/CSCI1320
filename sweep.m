%This function uncoveres all other empty spots and mine contact values of spots
%touching any empty spots previously revealed if the origional space is
%empty
function [field,selected]=sweep(r,c,field,selected,key)
%Set field value and label spot as selected
field{r,c}=key(r,c);
selected(r,c)=9;
%If the spot hasn't alread been chosen and is empty with not contaxt with
%mines then recurse for that new spot.
for i=-1:1
    for j=-1:1
            if key(r+i,c+j)>0
                field{r+i,c+j}=key(r+i,c+j);
                selected(r+i,c+j)=9;
            elseif key(r+i,c+j)==0 && selected(r+i,c+j)~=9
                selected(r+i,c+j)=9;
                field{r+i,c+j}=key(r+i,c+j);
                [field,selected]=sweep(r+i,c+j,field,selected,key);
        end
    end
end
end



    









