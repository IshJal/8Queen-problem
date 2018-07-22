function isSafe= safe(array,pos)  
len=size(array);
len=len(1);  
isSafe=1;
for i=1:len 
    if (array(i,1)==pos(1)||array(i,2)==pos(2))
        isSafe=0;
        break;
    end
    if (abs((array(i,1)-pos(1))/(array(i,2)-pos(2)))==1)
        isSafe=0;
        break;
    end
end
