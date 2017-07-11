%this script will create a random anagram 

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/16/16%}

%define function
function [output] = anagram(str)
%define length l of unput
[l]=length(str);
%preallocate
output=zeros(1,l);
%run through 1 to legnth of string taking a random index and then
%truncating input string and so the same index is not repeated.
for i=1:l
    index=randi([1,length(str)]);
    output(i)=str(index);
    str(index)=[];
end
%display anagram
output=sprintf('Your anagram is %s', char(output));

