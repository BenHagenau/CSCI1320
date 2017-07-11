function (a,b,d)=determination(x)
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
a=r;
b=c;
d=m;
