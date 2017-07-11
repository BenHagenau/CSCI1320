%This function makes a field board fully uncovered to display when the game
%is won or lost.
function game_key=make_game_key(field,key)
game_key=field;
%Same as key but with labled rims of field.
for i=2:8
    for j=2:8
game_key{i,j}=key(i,j);
    end
end
%Make mines on this field display an 'X' for asthetic appeal
for i=2:8
    for j=2:8
        if game_key{i,j}==-1
            game_key{i,j}='X';
        end
    end
end
end
