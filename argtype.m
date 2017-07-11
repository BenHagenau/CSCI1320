function [ output_args ] = argtype( in )
%takes in one argument(scarlar, vector, matrix) and returns its type
%row, vector, column vector, etc.

[r,c]=size(in);
if r==1 && c==1
    out='scalar';

elseif r==1 && c~=1
    out='row vector';

elseif r~=1 && c==1
    out='column vectr';

elseif r~=1 && c~=1
    out='matrix';
end
display(out)

end

