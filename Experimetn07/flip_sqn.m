function [fliped_seq, TR] = flip_sqn(len_n, seq, TR)
%Fliped Seqn
%   Detailed explanation goes here
if(TR==0)
    TR=1;
else
    TR=0;
end
    if(mod(len_n,2) == 1)
        for ii=1:1:len_n
            fliped_seq(ii)=seq(len_n-ii+1);
        end
    else
        for ii=1:1:len_n
            fliped_seq(ii)=seq(len_n-ii+1);
        end
        
    end
    
end

