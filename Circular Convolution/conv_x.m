function [conv_output,n] =conv_x(n, len_n, seq2, seq1, TR)
%Convolution
%   Detailed explanation goes here
[fliped_seq, TR] = flip_sqn(len_n, seq2, TR);
conv_output=zeros(1, len_n);
for ii=1:1:len_n
    [delayed_sqn] = delay_sqn(fliped_seq, len_n,...
        n, n(ii), TR);
    subplot(5,1,4), stem(n, delayed_sqn , 'g'); 
    temp=seq1.*delayed_sqn;
    conv_output(ii)=sum(temp);
end
end

