function decodedsequence = Lempel_Ziv_Decode_ABC(input)
 dataOfPairs1(1).name{1}='00';
 dataOfPairs1(1).name{2}='A';   
 dataOfPairs1(2).name{1}='01';
 dataOfPairs1(2).name{2}='B';  
 dataOfPairs1(3).name{1}='10';
 dataOfPairs1(3).name{2}='C';  
 i=1;
 n=1;
 k=1;
while (true)
     sum=0;
    noofbits=ceil(log2(4*(i-1)+2));
    if noofbits==1
        noofbits=2;
    end
    charr=input(n);
    for j=n+1:n+noofbits-1
       charr= strcat(charr,input(j));
       if j==n+noofbits-1
       arr(k)=string(charr);
       k=k+1;
       n=noofbits+n;
       end
    end
    i=i+1;
    for g=1:length(arr)
    sum= length(char(arr(g)))+sum;
    end
    if sum==length(input)
        break;
    end
end
for i=1:length(arr)
   if length(char(arr(i)))==2
       if arr(i)=="00"
       dataOfPairs(i).name{1}=0;
       dataOfPairs(i).name{2}='A';
       elseif arr(i)=="01"
       dataOfPairs(i).name{1}=0;
       dataOfPairs(i).name{2}='B';
       elseif arr(i)=="10"
       dataOfPairs(i).name{1}=0;
       dataOfPairs(i).name{2}='C';
       end
   else
       str=char(arr(i));
       str2=str(end-1:end);
       firstpart=char(arr(i));
       temp2=firstpart(1:end-2);
       firstpart=bin2dec(temp2);
       dataOfPairs(i).name{1}=firstpart;
       if str2=="00"
       dataOfPairs(i).name{2}='A';
       elseif str2=="01"
       dataOfPairs(i).name{2}='B';
       elseif str2=="10"
       dataOfPairs(i).name{2}='C';
       end
   end
end
for i=1:length(dataOfPairs)
    index=dataOfPairs(i).name{1};
    if dataOfPairs(i).name{1}==0
        blockarr(i)=string(dataOfPairs(i).name{2});
    else
       p=strcat(blockarr(index),dataOfPairs(i).name{2});
       blockarr(i)=p;
    end

end
decodedsequence=blockarr(1);
for i=2:length(blockarr)
    decodedsequence=strcat(decodedsequence,blockarr(i));
end

end