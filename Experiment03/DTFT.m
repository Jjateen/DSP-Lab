clc
clear all 
close all

omega=-6*pi:0.01*pi:6*pi;
n=0:1:7;
x_n=[ 1 2 3 4 5 6 7];

for ii=1:length(omega)
    for iii=1:length(x_n)
        temp1(iii)=x_n(iii)*exp(-1j*omega(ii)*(iii-1));
    end
    x_omega(ii)=sum(temp1);
end

subplot(2,1,1), stem(x_n);
subplot(2,1,2), plot(omega/pi, abs(x_omega));