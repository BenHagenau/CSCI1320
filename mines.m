%This function creates random mine locations
function mine = mines(x)
%Create random indecies
mine=randsample((11:71),x);
%Ensure indecies aren't that of the rim where labels are
y=15:7:43;
%10,19,28,37,46,55,64,73
for i=1:x
    if mine(i)==10
        mine=mines(x);
    elseif mine(i)==19
        mine=mines(x);
    elseif mine(i)==28
        mine=mines(x);
    elseif mine(i)==37
        mine=mines(x);
    elseif mine(i)==46
        mine=mines(x);
    elseif mine(i)==55
        mine=mines(x);
    elseif mine(i)==64
        mine=mines(x);
    elseif mine(i)==9
        mine=mines(x);
    elseif mine(i)==18
        mine=mines(x);
    elseif mine(i)==27
        mine=mines(x);
    elseif mine(i)==36
        mine=mines(x);
    elseif mine(i)==45
        mine=mines(x);
    elseif mine(i)==54
        mine=mines(x);
    elseif mine(i)==63
        mine=mines(x);
    end
end
end

