function [ sumdiv ] = sumDiv5( mat )
%The function sumDiv5 receives one input argument and returns how many 
%elements of the input variable are divisible by 5

y=mod(mat,5);
t=y==0;
w=sum(t);
out=sum(w)
end

