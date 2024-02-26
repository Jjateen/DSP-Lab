clear all
clc
alpha=0.7;
n=-50:1:50;
A=1;
M=1;
N=1; 
type_of_sqn=3;
len_n=length(n);

x_n=seq_gen(n,type_of_sqn, alpha, A, M, N);
omega=-6*pi:0.01*pi:6*pi;


for ii=1:length(omega)
    for iii=1:len_n
        temp1(iii)=x_n(iii)*exp(-1j*omega(ii)*n(iii));
    end
    x_omega(ii)=sum(temp1);
end


for ii=1:length(omega)
    abs_x_omega(ii)=1; %for impulse
    %for exponential decay abs_x_omega(ii)=1/sqrt(1.49-(1.4*cos(omega(ii))));
end


subplot(2,1,1), stem(x_n);
subplot(2,1,2), plot(omega/pi, abs(x_omega),...
    omega/pi, abs_x_omega, '--r');
