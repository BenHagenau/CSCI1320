%pickone(x) returns a random element from vector x 

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/7/16%}

%{Format call: pickone(enter vector)%}
%{Resulting answer pickone = random element from entered vector%}
%{Define call pickone(x) as a function, x being a vector%}
function picked=pickone(x)
%{define the function pickone so that it will produce the answer of a random
%element of input vector x. This random element is found by choosing a
%random element number of x between element one and the size, or total
%number of elements. This is then put into the matlab function of call
%element, vectorname(element number)=that element's value%}
pickone=x(randi([1,numel(x)]))