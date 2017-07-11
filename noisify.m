%This program will plot a line where x=y=integers from 1 to 10 in
%random oder and non-repeating. It will then plot points above or below the
%line by .25 randomly for each y value. 

%{Ben Hagenau, CSCI 1320, SID:105932529, lab 4, section 302%}
%last edited 2-6-16

%establish the figure
%set x euqal to out of order non repeated integers from 1 to 10
%set y equal to x
%set the graph's x limits from 1 to 10
%set the graphs y limits from .75 to 10.25 so that it all noise points can
%be plot and seen on the graph
%hold graph in preperation to superimpose noise points
figure
x=randsample(10,10)';
y=x;
plot(x,y)
xlim([1,10]);
ylim([.75,10.25]);
hold on
%let d randomly equal a 1 or a 0 to ensure the randomness of rather the
%noise point is plotted above of below the graph.
%set p equal to all of the element numbers where d equals 1
%start the creation of a y vector that will, at this point, be filled in
%the values in the same elements where d is equal to 1. In these elements
%of y2 the value of y of that element plus .52 will be placed.
d=randi([0,1],1,10);
p=find(d==1);
y2(p)=y(p)+.25;
%set m equal to the element numbers when d is equal to 0. The y2 element
%values of when d is equal to 0 will hold the value of y of those element
%values minues .25.
%y2 is now a vector 1x10 of y where each element is randomly .25 higher or
%lower.
m=find(d==0);
y2(m)=y(m)-.25;
%plot x and y2 superimposed on the origional figure and make the points
%plotted be black stars. 
plot(x,y2,'k*')