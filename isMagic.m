%This program will tell you rather or not the value of n that you entered
%is a magic square when transformed into an nxn matrix with non-repeated
%random integers from 1 to n^2

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/7/16%}

%function call: isMagic(value that you want to be used as the dimesnions
%and range of the random matrix that will be created and saved as randmat.
function y=isMagic(n)
%create random matrix with the given perameter of n. Matrix is nxn with
%random integer values from 1 to n^2, no repeats. 
%randsample produces a vector that is from 1 to n^2 without any repeats
%reshape this randsample vector so that it has the dimensions nxn
%display the matrix with an explination
randvec=randsample(n^2,n^2)';
randmat=reshape(randvec,n,n);
display('The matrix is')
display(randmat)
%find the sum of all of the columns of randmat by using the built in sum
%function.
%display sum of each column listed in order form left to right. 
SumOfColumns=sum(randmat);
display('Sum each column respectively:')
display(SumOfColumns)
%rotate randmat so that the origional rows are not the columns
%sum the new columns which is equivilent to summing the old rows
%display the sum of each individual old row in order from left to right
R=randmat';
SumOfRows=sum(R);
display('Sum of each row respectively:')
display(SumOfRows)
%Sum of the diagonal of randmat from left to right by using the sum and diag
%functions.
%sum of the diagonals of randmat from right to left by firts rotating the
%origional funtion 90 degrees and using the sum and diag functions to find
%the new top left to bottom right diagnal wich is the origional top right
%to bottom left diagonal. 
%display the sum of the diagonals in order form top left to bottom right
%then top right to bottom left. Explain the oder in a string display.
sumLR=sum(diag(randmat));
sumRL=sum(diag(rot90(randmat)));
SumOfDiagonals=[sumLR sumRL]; 
display('Sum of the diagonals: top left to bottom right, then top right to bottom left')
display(SumOfDiagonals)

%define c as the cumilative sum of the vector that makes up the sum of the
%columns
%define r as the cumilative sum of the vector that makes up the sum of the
%rows
%define d as the cumilative sum of the vector that makes up the sum of the
%two diagonals
c=cumsum(SumOfColumns);
r=cumsum(SumOfRows);
d=cumsum(SumOfDiagonals);

%If the sum of the individual sums of each column is equal to sum of the
%columns times the number of columns then define Cs(column sum) as 1. If
%not then display a zero.
if c(end)==SumOfColumns(1)*n
    Cs=1;
else
    Cs=0;
end
%If the sum of the individual sums of each row is equal to sum of the
%rows times the number of rows then define Rs(row sum) as 1. If
%not then display a zero.    
if r(end)==SumOfRows(1)*n
    Rs=1;
else
    Rs=0;
end
%If the sum of the individual sums of each diagonal is equal to sum of the
%diagonals times the number of diagonal then define Ds(diagonal sum) as 1. If
%not then display a zero.
if d(end)==SumOfDiagonals(1)*n
    Ds=1;
else
    Ds=0;
end
%define YN('Y'es it is a magic square, 'N'o it is not a magic square) as
%the sum of the three values Cs, Rs, Ds.
YN=Rs+Ds+Cs;
%if the YN is equal to 3 then that means that all of the columns had the
%same sum value, all of the rows had the same sum value, and the two
%dioganols had the same sum value. In this case display a logical 1 and
%state the result in a string. If no the display a logical zero and state
%the result. 

if YN==3 && SumOfDiagonals==SumOfRows==SumOfColumns;
    display('You have a magic square!')
else
    display('Sorry, no magic square today')
end