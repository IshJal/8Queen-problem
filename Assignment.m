i = 2; 
array = [1 1];
j=1;
while (i < 9)
    if (j == 8)
        i = i - 1;
        j = array(i,2)+1;
        array = array(1:end-1,1:end);
    end
    pos = [i,j];
    isSafe = 0;
    while (isSafe==0 && j<9)%
        pos = [i,j];
        isSafe = safe(array,pos);
        j = j + 1;
    end
    
    if (isSafe==0)
        i = i - 1;
        j = array(i,2)+1;
        array = array(1:end-1,1:end);  
    elseif (isSafe==1)
        i = i + 1;
        j = 1;
        array = [array;pos];
    end
disp('...........')  
disp(array)    
end        