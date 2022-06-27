function [Seq]=adaptiveArithmeticDeco(binaryCodeword,SequenceUnique,NumOfSeq)
digits(130)
bintext=binaryCodeword; 
%bintext=input('please enter your  Unique sequence needed to be decoded :','s');
binlen=length(bintext);
decimalnum=0;
for i=1:binlen
  if(bintext(i)=='0')
decimalnum=vpa(decimalnum+((2^-i)*0),20);
    else
       decimalnum=vpa(decimalnum+((2^-i)*1),20); 
    end
end
symbols=SequenceUnique;
for i=1:length(symbols)
level(i)=vpa(0);
i=i+1;
end
for i=1:length(symbols)
    level(i+1)=i/length(symbols);
    i=i+1;
end
%vpa(level);
M=length(symbols);
n=0;
for i=1:length(symbols)
occurances(i)=0;
Seq(i)=0;
end
for i=1:NumOfSeq

    for j=1:length(symbols)
if(vpa(decimalnum)>level(j) & vpa(decimalnum)<level(j+1))
    occurances(j)=occurances(j)+1;
    n=n+1;
    for k=1:length(symbols)
    Prob(k)=vpa((1+occurances(k))/(M+n));
    k=k+1;
    end
    %Prob
    
 
    level(1)=vpa(level(j)) ;
    %disp('level 1=');
    %disp(level(1));        %lower level
    level(length(symbols)+1)=vpa(level(j+1)); %upperlevel
    % disp('level max=')
    %disp(level(length(symbols)+1))
    Cum_prob=0;
    for z=1:length(symbols)-1
      Cum_prob=vpa(vpa(Prob(z))+vpa(Cum_prob));
     %disp('Prob z=')
      %disp(vpa(Prob(z)))
       % disp('Cum_prob')
      %disp(vpa(Cum_prob))
      level(z+1)=vpa(vpa((vpa(level(length(symbols)+1))-vpa(level(1)))*vpa(Cum_prob))+vpa(level(1)));
      %disp('level(z+1)')
      %disp(vpa(level(z+1)))
      z=z+1;
    end
      %vpa(level)  
   % lowerProb=level(j-1)
    %upperProb=level(j)
    %middle1=floor((((upperProb-lowerProb)*Prob(1))+lowerProb)*1e15)/1e15
    %middle2=floor((((upperProb-lowerProb)*(Prob(1)+Prob(2)))+lowerProb)*1e15)/1e15;   

Seq(i)=char(symbols(j));
j=j+1;
break;
else 
    j=j+1;
    end
end
    i=i+1;
end
 %Seq=char(Seq);
 symbols1=unique(Seq);
if((length(symbols1)==2 & symbols1=='ab') | (length(symbols1)==3 & symbols1=='abc'))
    Seq=upper(Seq);
    %length(symbols1)==length(text))&
end

end