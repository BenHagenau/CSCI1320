%--------------------------------
% GAME: move block to collect more moves and see how long you can last
%--------------------------------
% Benjamin K. Hagenau
%--------------------------------


clc; clear all;
cell=cell(7);
m=10;
r=4;
c=4;
cell{r,c}='1';
rand1=randi(49);
rand2=randi(49);
rand3=randi(49);
value1=randi(10);
value2=randi(10);
value3=randi(10);
count=0;
cell{rand1}=value1;
cell{rand2}=value2;
cell{rand3}=value3;
cellplot(cell)
fprintf('moves: %d\n',m)
tic;
if rand==24 && rand2==24 && rand3==24
    m=1;
end
while m~=0
    x=input(' ','s'); 
    m=m-1;
    if isempty(x)==0
        if x=='w'
        cell{r,c}=[];
        r=r-1;
        cell{r,c}='1';
        cellplot(cell)
    elseif x=='s'
        cell{r,c}=[];
        r=r+1;
        cell{r,c}='1';
        cellplot(cell)
    elseif x=='d'
        cell{r,c}=[];
        c=c+1;
        cell{r,c}='1';
        cellplot(cell)
    elseif x=='a'
        cell{r,c}=[];
        c=c-1;
        cell{r,c}='1';
        cellplot(cell)
    elseif x=='quit'
        m=0;
    end
    if cell{r,c}==cell{rand1}
        rand1=randi(49);
        count=count+value1;
        value1=randi(5);
        cell{rand1}=value1;
        m=m+2;
    end
    if cell{r,c}==cell{rand2}
        rand2=randi(49);
        count=count+value2;
        value2=randi(5);
        cell{rand2}=value2;
        m=m+2;
    end
    if cell{r,c}==cell{rand3}
        rand3=randi(49);
        count=count+value3;
        value3=randi(5);
        cell{rand3}=value3;
        m=m+2;
    end
    fprintf('moves: %d \n', m)
    end
end
toc;
fprintf('SCORE: %d\n', count)  