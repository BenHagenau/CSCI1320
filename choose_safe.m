function field=choose_safe(r,c,key,field)

%special cases C1, C7, R1, R7 [(7,7), (1,7), (7,1), (1,1)]
if r==2 || r==7 || c==7 || c==2
    if r==7 && c~=2 && c~=7
        check=cell(2,3);
        for i=-1:0
            for j=-1:1
                check{r+i,c+j}=key{r+i,c+j};
            end
        end
        check=check((end-1:end),[(end-2:end)]);
        count=0;
        for i=1:2
            for j=1:3
                if check{i,j}<1
                   count=count+1;
                end
            end
        end
        %assign value according to number of mines in vicinaty
        if count==0
            field{r,c}='-';
        end
        if count>0
            field{r,c}=count;
        end
    end
    
    if c==7 && r~=1 && r~=7
        check=cell(3,2);
        for i=-1:1
            for j=-1:0
                check{r+i,c+j}=key{r+i,c+j};
            end
        end
        check=check((end-2:end),[(end-1:end)]);
        count=0;
        for i=1:3
            for j=1:2
                if check{i,j}<1
                   count=count+1;
                end
            end
        end
        %assign value according to number of mines in vicinaty
        if count==0
            field{r,c}='-';
        end
        if count>0
            field{r,c}=count;
        end
    end
    if c==2 && r==2
        check=cell(2);
        for i=0:1
            for j=0:1
                check{r+i,c+j}=key{r+i,c+j};
            end
        end
         check=check((end-1:end),[(end-1:end)]);
        count=0;
        for i=1:2
            for j=1:2
                if check{i,j}<1
                   count=count+1;
                end
            end
        end
        %assign value according to number of mines in vicinaty
        if count==0
            field{r,c}='-';
        end
        if count>0
            field{r,c}=count;
        end
    end
    if c==7 && r==2
        check=cell(2);
        for i=0:1
            for j=-1:0
                check{r+i,c+j}=key{r+i,c+j};
            end
        end
         check=check((end-1:end),[(end-1:end)]);
        count=0;
        for i=1:2
            for j=1:2
                if check{i,j}<1
                   count=count+1;
                end
            end
        end
        %assign value according to number of mines in vicinaty
        if count==0
            field{r,c}='-';
        end
        if count>0
            field{r,c}=count;
        end
    end
    if c==7 && r==7
        check=cell(2);
        for i=-1:0
            for j=-1:0
                check{r+i,c+j}=key{r+i,c+j};
            end
        end
         check=check((end-1:end),[(end-1:end)]);
        count=0;
        for i=1:2
            for j=1:2
                if check{i,j}<1
                   count=count+1;
                end
            end
        end
        %assign value according to number of mines in vicinaty
        if count==0
            field{r,c}='-';
            x=field;
        end
        if count>0
            field{r,c}=count;
            %x=field;
        end
    end
    
    if c==2 && r==7
        check=cell(2);
        for i=-1:0
            for j=0:1
                check{r+i,c+j}=key{r+i,c+j};
            end
        end
         check=check((end-1:end),[(end-1:end)]);
        count=0;
        for i=1:2
            for j=1:2
                if check{i,j}<1
                   count=count+1;
                end
            end
        end
        %assign value according to number of mines in vicinaty
        if count==0
            field{r,c}='-';
            %x=field;
        end
        if count>0
            field{r,c}=count;
            %x=field;
        end
    end       
else
    
    check=cell(3);
    for i=-1:1
        for j=-1:1
            check{r+i,c+j}=key{r+i,c+j};
%             if key{r+i,c+j}~=0
%                    field=choose_safe(r+i,c+j,field,key);
%             end
        end
    end
   
    check=check((end-2:end),[(end-2:end)]);

    %create a count of how many mines there are in this area
    count=0;
    for i=1:3
        for j=1:3
            if check{i,j}<1
               count=count+1;
            end
        end
    end
    %assign value according to number of mines in vicinaty
    if count==0
        field{r,c}='-'; 
    end
    if count>0
        field{r,c}=count;
    end
end



