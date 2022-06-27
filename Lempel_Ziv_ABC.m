function [EncodedSequence,compressionratio] = Lempel_Ziv_ABC(input)
input=upper(input);
 dataOfPairs1(1).name{1}=0;
 dataOfPairs1(1).name{2}='A';   
 dataOfPairs1(2).name{1}=1;
 dataOfPairs1(2).name{2}='B';  
 dataOfPairs1(3).name{1}=2;
 dataOfPairs1(3).name{2}='C';  
    addressBit = 100;
    dictionaryMax = 2^addressBit - 1;
    dictionary = [];
    content = [];
    EncodedSequence='';
    length(input)
   
    for i=1:length(input)
        content = [content input(i)];
        %lw akher block d aslun mtkrra abl kda bdl maydiscard yakhodha ka
        %block m3ah fl dectionary
        if i==length(input)
          dictionary{length(dictionary)+1}=content;
            content = [];   
        %lw msh akher block byshuf hya kant mwgoda abl kda wla la lw lbock
        %d mwgoda isempty htrg3 la fmsh hyzwd fl dictionary lw isempty true
        %y3ni msh mwgoda hyzwdha fldictionary wyfdy lcontent 3shan ybd2
        %yconcatenate block gded
        elseif isempty(find(strcmp(dictionary,content)))
            dictionary{length(dictionary)+1}=content;
            content = [];
        end
        if size(dictionary,2) == dictionaryMax
            break;
        end
    end

    for i=1:length(dictionary)
        % lw hwa hrf wahd flblock fdaymn hykon lpair (0,el7arf nfso)
        if length(char(dictionary(i)))==1
            dataOfPairs(i).name{1}=0;
            dataOfPairs(i).name{2}=char(dictionary(i));
        else
            %lw la hyfsl lstring hyshel mno akher harf bs 3shan yqarn
            %lstirng da bl blocks ly abl kda y3rf blocknum ly m3mlo concatenate pair(blocknum,harf)

            %fhna bs byfsl awl goz2 mn lblock m3ada akher harf
            str=char(dictionary(i))
            newstr=string(str(1));
        for j=2:length(str)-1
             newstr=strcat(string(newstr), string(str(j)));
        end
        newstr
        %hna bydwr yshuf lstring da kan block kam 3shan y3ml lpair
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
           result(i)=4*dataOfPairs(i).name{1}+dataOfPairs(i).name{2};
           MaxResult(i)=4*(i-1)+2;
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
    
  compressionratio= length(char(EncodedSequence))/(length(char(input))*2);
end