% This script creates an image processing menu driven application

%{Ben Hagenau, CSCI 1320, SID:105932529, lab 4, section 302%}
%last edited 3-1-16
clear all;close all;clc;

% Display a menu and get a choice
choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image','Brighten Image', 'invert_L', 'invert_NL', 'addRandomNoise_L', 'addRandomNoise_NL', 'luminance_L', 'luminance_NL', 'composite', 'extremeContrast', 'img_crop','flag', 'meanFilter', 'binaryMask');  % as you develop functions, add buttons for them here
 
% Choice 1 is to exit the program
while choice ~= 1
   switch choice
       case 0
           disp('Error - please choose one of the options.')
           % Display a menu and get a choice
           choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten Image', 'invert_L', 'invert_NL', 'addRandomNoise_L', 'addRandomNoise_NL', 'luminance_L', 'luminance_NL', 'composite', 'extremeContrast', 'img_crop', 'flag', 'meanFilter', 'binaryMask');  % as you develop functions, add buttons for them here
        case 2
           % Load an image
           image_choice = menu('Choose an image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
           switch image_choice
               case 1
                   filename = 'lena1.jpg';
               case 2 
                   filename = 'mandrill1.jpg';
               case 3
                   filename = 'FlatIrons.jpg';  
               case 4 
                   filename = 'sully (1).bmp';
               case 5 
                   filename = 'yoda.bmp';
               case 6  
                   filename = 'shrek.bmp';
               case 7 
                   filename = 'lena1_small.jpg';
               case 8
                   filename = 'yoda_small.bmp';
               
           end
           current_img = imread(filename);
       case 3
           % Display image
           figure
           imagesc(current_img);
           if size(current_img,3) == 1
               colormap gray
           end
           
       case 4
           % Brighten image
           %request choice of loops or no loops via menu
           choice=menu('loops or no loops', 'loops', 'no loops')
           switch choice 
               %choice cases/ error message if window is closed
               case 0
                   disp('Error - please choose another option')
                   choice=menu('loops or no loops', 'loops', 'no loops')
               case 1
                   %request brightness value
                   brightness=input('please enter a brightness:');
                   newImage = makebright_L(current_img, brightness);
               case 2 
                   %request brightness value
                   brightness=input('please enter a brightness:');
                   newImage = makebright_NL(current_img, brightness);
           end
           %save image as new image and reference makebright_NL or
           %makebright_L functions.
       case 5
           %call function to invert image w loops
           newImage = invert_L(current_img);
       case 6
           %call function to invert image w/o loops
           newImage = invert_NL(current_img);
       case 7
           %call a function to add random noise to an image w/ loops
           newImage = addRandomNoise_L(current_img);
       case 8
           %call a function to add random noise to an image w/o loops
           newImage = addRandomNoise_NL(current_img);
       case 9
           %call a function to create gray scale image w/ loops
           newImage = luminance_L(current_img);
       case 10
           %call a function to create gray scale image w/o loops
           newImage = luminance_NL(current_img);
       case 11
           %call a function to create a composite image of image layers
           newImage = composite(current_img);
       case 12
           %call a function to add extreme contrast to an image
           newImage = extremeContrast(current_img);
       case 13
           %prompt request crop dimensions
           x1=input('x-coordinate of top left corner:');
           y1=input('y-coordinate of top left corner:');
           x2=input('x-coordinate of bottom right corner:');
           y2=input('y-coordinate of bottom right corner:');
           %call function to crop image wiht given dimensions
           newImage = img_crop(current_img, x1, y1, x2, y2);
       case 14
           %use menues to have chooser select three images to make the
           %flag, make the flag by calling a function
           choice1=menu('choose your first image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
           switch choice1
               case 0
                    disp('Error - please choose another option')
                   choice1= menu('choose your first image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
               case 1
                   inImg1='lena1.jpg'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 2
                   inImg1='mandrill1.jpg'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 3
                   inImg1='FlatIrons.jpg'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 4
                   inImg1='sully (1).bmp'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 5
                   inImg1='yoda.bmp'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 6
                   inImg1='shrek.bmp'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 7
                   inImg1='lena1_small.jpg'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
               case 8
                   inImg1='yoda_small.bmp'
                   choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                   switch choice2
                       case 0
                           disp('Error - please choose another option')
                           choice2=menu('choose your second image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                       case 1
                           inImg2='lena1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                                case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 2
                           inImg2='madrill1.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 3
                           inImg2='FlatIrons.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 4
                           inImg2='sully (1).bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 5
                           inImg2='yoda.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 6
                           inImg2='shrek.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 7
                           inImg2='lena1_small.jpg'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                       case 8
                           inImg2='yoda_small.bmp'
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                           switch choice3
                               case 0
                                    disp('Error - please choose another option')
                           choice3=menu('choose your third image', 'lena1', 'mandril1', 'Flat Irons', 'sully', 'yoda', 'shrek', 'lena1 small', 'yoda small');
                               case 1
                                   inImg3 = 'lena1.jpg';
                               case 2 
                                   inImg3 = 'mandrill1.jpg';
                               case 3
                                   inImg3 = 'FlatIrons.jpg';  
                               case 4 
                                   inImg3 = 'sully (1).bmp';
                               case 5 
                                   inImg3 = 'yoda.bmp';
                               case 6  
                                   inImg3 = 'shrek.bmp';
                               case 7 
                                   inImg3 = 'lena1_small.jpg';
                               case 8
                                   inImg3 = 'yoda_small.bmp';
                           end
                   end
           end
             newImage=flag(inImg1,inImg2,inImg3)
       case 15
           %call a function to create a mean filter for an image.
           newImage=meanFilter(current_img);
       case 16
           %call a function to create a binary mask for wrench image
           newImage=binaryMask('wrench1.jpg');
   end
   % Display menu again and get user's choice
   choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten Image', 'invert_L', 'invert_NL', 'addRandomNoise_L', 'addRandomNoise_NL', 'luminance_L', 'luminance_NL', 'composite', 'extremeContrast', 'img_crop', 'flag', 'meanFilter', 'binaryMask');  % as you develop functions, add buttons for them here
end
