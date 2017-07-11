%twolineplot will graph one oscillation of sine and cosine.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/7/16%}

%Create a figure window in preperation for plot
figure
%Define the values of the x-axis, time, from 0 to 2pi broken into 50
%seperate values. Supress vector outcome.
t=linspace(0,2*pi,50);
%plot sin(t) on the figure.
plot(t,sin(t))
%hold the current graph of sin(t) so that cos(t) can be superimposed on the
%same set of axis.
hold on
%plot cos(t) as a red dashed line superimposed on the same plot as sin(t).
plot(t,cos(t),'r--')
%label the x axis as time in seconds.
xlabel('time (s)')
%label the y axis as function value; those functions being sin(t) and
%cos(t).
ylabel('function value')
%title the graph "Sine and Cosine curves".
title('Sine and Cosine curves')
%create a legend to signify sin(t), Sin, and cos(t), Cos.
legend('Sin','Cos')
%bound the x-axis between 0 and 2pi.
xlim([0,2*pi])
%bound the y-axis between -1.4 and 1.4.
ylim([-1.4,1.4])