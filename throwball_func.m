%This function, throwball_func, takes the inputs of initial velocity, v,
%angle of launch, theta, and maxtime, time interval in question, and
%produces rather or not the ball hits the ground in the time, maxtime. If
%the ball hits the ground in the given time then throwball_func = 0. If it
%doesn't hit the ground in maxtime then throwball_func = 1.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/7/16%}

%{Format call: throwball_func(initial velocity, angle of launch, maxtime to hit the ground%}
%{Resulting answer throwball_func = 1 or 0. (0 means that the ball will hit the
%ground in maxtime and 1 being that it does not hit the ball in maxtime.%}
%define the function throwball_func to take the input of intital velocity,
%angle of launch, and maxtime in question.
function balltime=throwball_func(v, theta, maxtime)
%define initial hight, h, in meters, acceleration, gravitational constant,
%in meters per second squared, and t as max time for the kinematics
%equations given below. x defines the horizontal position and y defines the
%vertical distance.
h=1.5;
g=9.8;
t=maxtime;
x=v*cos(theta*(pi/180))*t;
y=h+v*sin(theta*(pi/180))*t-(1/2)*g*t^2;
%define d as the element of x that corresponds with the elements of y where
%y<0. 
d=x(find(y<0));
%if there are no values of y that less than zero on the input time
%interval, maxtime, then isempty(d) will produce a 1 meaning that the ball
%does not hit the ground because the vector d is empty. If there is a value
%of y that is less then zero in maxtime then a zero will be produced
%because d is not an empty vector. 
throwball_func=isempty(d);
if throwball_func==1
    fprintf('The projectile did NOT hit the ground in %d seconds!\n', maxtime)
else
    fprintf('The projectile hit the ground in %d seconds!\n', maxtime)
end