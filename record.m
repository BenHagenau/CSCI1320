%This function creates a structure to show game data and then rights it to
%a text file that can be opened by the user to see game data as well as
%save game data.
function record(name,NoM,win,diff)
if diff~=100
    if diff==5
        x='Easy';
    elseif diff==6
        x='Meduim';
    elseif diff==7
        x='Hard';
    end
    %Create struct and turn to table to be writed to text file. Display table
    %to user
    record=struct('Name', strtok(name), 'Win', win, 'Moves', NoM, 'Difficulty', x);
    record=struct2table(record)
    writetable(record,'Game_Results.txt');
end



