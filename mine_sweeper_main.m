clc; clear all
%Welcome and explain
disp('Welcome to Mine Sweeper (Matlab Edition)!')
disp('Mines have been randomly placed on a 7x7 field for your inconvinience!')
disp('Your Task: Find where all of the mines are without triggering one')
disp('Rules: Enter cooordinates of where you think there is NOT a mine')
disp('     (1) If you uncover a mine then you lose')
disp('     (2) If you uncover a spot not incontact with a spot with a mine then all similar spots that have contact with the origional will be uncovered.')
disp('     (3) If you uncover a spot that is in contact with mine(s) the it will tell you how many mines it is incontact with')
disp('Assuming you did not lose continue on your journey and keep guessing until you win or you die!')
disp('Easy: 5 mines, Meduim: 6 mines, Hard: 7 mines')
%Set new game state
again=1;
while again==1
clear all
%Ask user for name(string)
NoM=[];
win=[];
name=input('Please enter your name: ','s');
sprintf('Hello %s!', name)
%Choose difficulty 
    disp('Please choose a difficulty')
    diff=menu('Difficulty', 'Exit game', 'Easy', 'Medium', 'Hard');
    switch diff
        case 0
            disp('error-please choose a difficulty')
            while diff==0
            diff=menu('Difficulty', 'Exit game', 'Easy', 'Medium', 'Hard');
            end
        case 1
            disp('You have quit the game')
            diff=100;
            again=0;
        case 2
            diff=5;
            again=1;
            display('FIVE mines have been randomly placed')
        case 3
            diff=6;
            again=1;
            display('SIX mines have been randomly placed')
        case 4
            diff=7;
            again=1;
            display('SEVEN mines have been randomly placed')
    end 
if again~=0
    %Key: empty=0, mine=1, 
    %Chosen_key: chosen=1, unchosen=0
    %Creat variables, visuals, and references
    if diff~=1 
        %Create random mine locations
        mine=mines(diff);
        %Create key
        key=make_key(mine);
        %Make field
        field=make_field()
        %Store chosen indecies
        selected=selected();
        %Make game key
        game_key=make_game_key(field,key);
        %Create blank text file to store structure
        fopen('Game_Results.txt','w+');
        %Set number of moves count
        NoM=0;
        %Set game continuation state
        r=1;
        c=1;
        tic;
        while key(r,c)~=-1 || key(r,c) == NaN 
            %Request value
            [coor]=input_coor(field,selected);
            r=coor(1);
            c=coor(2);
            selected(r,c)=9;
            %If a mine is selected display key, add to move count
            if key(r,c)==-1 
                game_key=game_key
                NoM=NoM+1;
                %implay('Nuclear Explosion.mp4');
                disp('BOOM! You have selected a mine! YOU LOSE!')
                win='No';
                toc;
            end
            %If a spot touching mine is selected show value on key, mark
            %selected, and to move count
            if key(r,c)>0
                field{r,c}=key(r,c)
                selected(r,c)=9;
                %game_key=game_key
                NoM=NoM+1;
            end
             %If a safe spot is found uncover as needed, add to move count
             if key(r,c)==0
                 [field,selected]=sweep(r,c,field,selected,key);
                 field=field
                 %game_key=game_key
                 NoM=NoM+1;
             end
             %Check for win. If so display as needed and display game key
             if length(find(selected==0))==diff
                 key(r,c)=-1;
                 game_key=game_key
                 fprintf('GREAT JOB! %s, you won in %d moves.\n', name, NoM)
                 win='Yes';
                 toc;
             end
         end
    end
%Create structure and write to a .txt file
record(name,NoM,win,diff);
%Ask if the user wants to play another game
again=menu('Play Again', 'Yes', 'No');
end
end

