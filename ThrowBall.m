%{plot the tragectory of a ball thrown in the air%}
%{Ben Hagenau%}
%{SID:105932529%}
%{CSCI 1320%}
%{Lab 3%}
%{Section: 302%}
%{last edited: 2-5-16%}

%{Welcome the user and explain program%}
display('Welcome! This program will enable you to find the horizontal distance traveled of a ball launched from initial hight of 1.5 meters!')
%{initial hight of the ball at release in meters%}
h=1.5;
%{gravitational acceleration of the ball in meters per seconds squared%}
g=9.8;
%{ask user for input of balls initial velocity in meters per second%}
v=input('Please enter the velocity of the ball at release:');
%{ask user for input of angle of velocity at time of release in degrees%}
ang=input('Please enter the angle at which the ball is thrown:');
%{time vector from 0 to 1, 1000 steps, inclusive. This is the range of time
%being plotted%}
t=linspace(0,1,1000);

%{define the equations for the hight and horizontal distance x of the ball
%after it is thrown.%} 
x=v*cos(ang*(pi/180))*t;
y=h+v*sin(ang*(pi/180))*t-(1/2)*g*t.^2;

%{find the index when the hight first becomes zero then find the value of x
%(the horizontal distance) at the same index as when the hight is
%zero. d is defined as that distance%}
d=x(find(y<0,1));
%{display the distance which the ball has travelled horizontally with a 
%total of 4 numerical values and at least 3 decimal places%}
fprintf('The ball hits the ground at a distance of %5.3f meters!\n', d)
%{open new figure window%}
figure
%{plot x and y on cardesian coordinates for the given values of t%}
plot(x,y,'b')
%{Give the graph a title and label the x and y axis%}
xlabel('Horizontal Distance')
ylabel('Vertical Distance')
title('Tragectory of Ball')
%{Hold this graph of x and y. Then plot a dotted black line at y=0 to 
%represent the ground%}
hold on
plot([0 max(x)],[0 0],'k--')

