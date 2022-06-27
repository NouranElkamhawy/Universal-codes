function [EncodedSequence,compressionratio] = Lempel_Ziv_Alphapet(input)
input=upper(input);
Chars=char(strcat(char(65:90),", ?"));
for i=1:length(Chars)
 dataOfPairs1(i).name{1}=i-1;
 dataOfPairs1(i).name{2}=Chars(i);   
end
for i=1:length(dataOfPairs1)
    disp(dataOfPairs1(i).name)
end
    addressBit = 100;
    dictionaryMax = 2^addressBit - 1;
    dictionary = [];
    content = [];
    EncodedSequence='';
    length(input)
    for i=1:length(input)
        content = [content input(i)];
        if i==length(input)
          dictionary{length(dictionary)+1}=content;
            content = [];  
        elseif isempty(find(strcmp(dictionary,content)))
            dictionary{length(dictionary)+1}=content;
            content = [];
        end
        if size(dictionary,2) == dictionaryMax
            break;
        end
    end

    for i=1:length(dictionary)
        if length(char(dictionary(i)))==1
            dataOfPairs(i).name{1}=0;
            dataOfPairs(i).name{2}=char(dictionary(i));
        else
            str=char(dictionary(i))
            newstr=string(str(1));
        for j=2:length(str)-1
             newstr=strcat(string(newstr), string(str(j)));
        end
        newstr
        for u=1:i-1
         if char(dictionary(u))==newstr
              dataOfPairs(i).name{1}=u; 
              dataOfPairs(i).name{2}=str(length(str));
         end
        end
        end
    end

    for i=1:length(dataOfPairs)
        for j=1:length(dataOfPairs1)
      if   dataOfPairs(i).name{2}==dataOfPairs1(j).name{2}
           dataOfPairs(i).name{2}=dataOfPairs1(j).name{1};
           result(i)=32*dataOfPairs(i).name{1}+dataOfPairs(i).name{2};
           MaxResult(i)=32*(i-1)+28;
           if MaxResult(i)==1
               noofbits(i)=1;
           else if MaxResult(i)==2
               noofbits(i)=2;
           else
           noofbits(i)=ceil(log2(MaxResult(i)));
           end
           code(i)=string(dec2bin(result(i),noofbits(i)));
           EncodedSequence=strcat(EncodedSequence,code(i));
     
      end
        end
    end

    end
      compressionratio= length(char(EncodedSequence))/(length(char(input))*5);
end