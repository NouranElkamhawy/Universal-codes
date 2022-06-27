
%cho="choose 1 for encoding and 2 for decoding:";
%Choice=input(cho);

%if(Choice==1)
%-------------------------------------ENCODING---------------------------%
%------------------------------------------------------------------------%

%Chars=char(strcat(char(65:90),",. ?"));
function [d2b, efficiency] = adaptiveArithmeticEnco(text)
digits(130);


% cho="choose 1 for encoding and 2 for decoding:";
% Choice=input(cho);
% if(Choice==1)
%-------------------------------------ENCODING---------------------------%
%------------------------------------------------------------------------%

% Chars=char(strcat(char(65:90),",. ?"));
% 
% text=input('please enter your  sequence needed to be encoded :','s');
len=length(text);
Text=lower(text);

symbols=unique(Text);

for i=1:length(symbols)
    Prob(i)=vpa(1/length(symbols));
end
% Prob;
%-----Initial Value------------------------------------------------------
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

%-----Encoding-----------------------------------------------------------

for i=1:length(symbols)
occurances(i)=0;
end

%-------------Encoding--------------------------------
for i=1:length(Text)

    for j=1:length(symbols)
if(Text(i)==symbols(j))
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
%j=j+1;
break;
else 
    j=j+1;
    end
end
    i=i+1;
end
Meanprob=vpa(((vpa(level(length(symbols)+1))+vpa(level(1)))/2),20);
%Meanprob=double(Meanprob)
wordProb=vpa(vpa(level(length(symbols)+1))-vpa(level(1)));
s= 0; 
%ApproxWordProb=round(Meanprob,5)% number bits for integer part of your number      
CodeWordLen=ceil(log2(1/wordProb))+1;     % number bits for fraction part of your number
% binary number
CodeWordLen=double(CodeWordLen);
%if(CodeWordLen<10)
%MeanprobAppr=round(Meanprob,5)
 d2b =fix(rem(Meanprob*pow2(-(s-1):CodeWordLen),2));  
 %disp("Binary CodeWord:")
 %disp(d2b)
%else
%     d2b = fix(rem(Meanprob*pow2(-(s-1):CodeWordLen),2)); 
% disp("Binary CodeWord:")
% disp(d2b)
  %-----Efficiency------------------------------------------------------
  num=ceil(log2(length(symbols)));
  FixedCodeLen=num*length(text);
 efficiency=round((CodeWordLen/FixedCodeLen),6);
 d2b=char(d2b);
d2b= erase(d2b,'[');
d2b= erase(d2b,']');
d2b= erase(d2b,' ');
d2b= erase(d2b,',');
disp(d2b);
%end



% else   %if no of symbols more than 10
% end

%elseif(Choice==2)

end