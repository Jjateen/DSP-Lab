clc
clear all
close all

n=-100:1:100;
len_n=length(n);
type_of_sqn_1=3;
type_of_sqn_2=3;
alpha1=0.5;
alpha2=0.7;
TR=0;
M=1;
N=1;
Amp=1;

[seq1] = sqn_gen_1(n, type_of_sqn_1,...
    alpha1, Amp, M, N);
[seq2] = sqn_gen_1(n, type_of_sqn_2,...
    alpha2, Amp, M, N);

[fliped_seq, TR] = flip_sqn(len_n, seq2, TR);

 
% [delayed_sqn] = delay_sqn(seq1, len_n, n, 5, 1);
% seq1=delayed_sqn;

subplot(5,1,1), stem(n, seq1);
subplot(5,1,2), stem(n, seq2, 'r'); 
pause

subplot(5,1,3), stem(n, fliped_seq, 'g'); 

conv_output=zeros(1, len_n);
for ii=1:1:len_n
    [delayed_sqn] = delay_sqn(fliped_seq, len_n, n, n(ii), TR);
    subplot(5,1,4), stem(n, delayed_sqn , 'g'); 
    temp=seq1.*delayed_sqn;
    conv_output(ii)=sum(temp);
    subplot(5,1,5), stem(n, conv_output); 
    pause(0.1)
end



% if(mod(len_n,2) == 1)
%     for ii=1:1:length(n)
%         fliped_seq(ii)=seq1(len_n-ii+1);
%     end
% end



% figure, stem(n, seq1)
 


