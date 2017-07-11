%This script will calculate and plot a stars luminosity, L, in Watts 
%using the equation, L=4(pi)d^2b. d=[distance from the sun in meters] and 
%b=[is the brightness of the star in Watts per meters^2]

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/7/16%}

%{Introduce the user to the program function%}
display('This program will calculate the luminosity of a star in Watts.') 
display('When prompted please enter the star''s distance from the sun in meters and')
display('it''s brightness in Watts per meters squared')

%{Request the star's distance from the sun in meters and the star's birghtness
%in Watts per meters^2%}
d=input('Enter the distance:');
b=input('Enter the brightness:');

%{the euqation that the input values will be entered into giving the stars Luminosity%}
L=4*pi*d^2*b;

%{display the luminosity of the star to the user%}
fprintf('The luminosity the specified star is %13.3f Watts!\n',L)