%this script will create a random anagram using a recursive function.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/16/16%}

%define function
function [output] = anagram_rec(str)
%preset output
output='';
%take random index, concatenate letter of index, delete letter.
if length(str)>0
    indx=randi([1,length(str)]);
    letter=str(indx);
    str(indx)=[];
    output=[letter anagram_rec(str)];
end
end






% [l]=length(str);
% output=zeros(1,l);
% for i=1:l
%     index=randi([1,length(str)]);
%     output(i)=str(index);
%     str(index)=[];
% end
% output=sprintf('Your anagram is %s', char(output));