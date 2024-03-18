clc
clear all
close all
n=-50:1:50;
type_of_sqn=6;
alpha=0.9;
Amp=1;
M=1;
N1=11;
N2=17;

% g_1_n=sqn_gen_1(n, 6, alpha, Amp, M, N1);
% g_2_n=sqn_gen_1(n, 6, alpha, Amp, M, N2);
% y_n=2*g_1_n+2.5*g_2_n;
% 
% subplot(2,1,1), stem(n, y_n)
% [Y_1_omega,omegax] =  dtftx(y_n,n);
% 
% [G_1_omega,omegax] =  dtftx(g_1_n,n);
% [G_2_omega,omegax] =  dtftx(g_2_n,n);
% 
% Y_2_omega=2*G_1_omega+2.5*G_2_omega;
% 
% subplot(2,1,2), plot(omegax/pi, abs(Y_1_omega),...
%     omegax/pi, abs(Y_2_omega), '--r')


x_1_n=sqn_gen_1(n, 5, alpha, Amp, M, N1);

x_n=x_1_n.^(2);
%  subplot(2,1,1), stem(n, x_n)
[X1_omega,omegax] =  dtftx(x_n,n);

x_2_n=sqn_gen_1(n, 5, alpha, Amp, M, N2);
 subplot(3,2,1), stem(n, x_2_n)

x_3_n=sqn_gen_1(n, 5, alpha, Amp, 1, N1);
 subplot(3,2,3), stem(n, x_3_n)

x_4_n=(1/2)*x_2_n + (1/2)*x_3_n;
 subplot(3,2,5), stem(n, x_4_n)

[X2_omega,omegax2] =  dtftx(x_2_n,n);
[X3_omega,omegax3] =  dtftx(x_3_n,n);
[X4_omega,omegax4] =  dtftx(x_4_n,n);

subplot(3,2,2), plot(omegax2/pi, abs(X2_omega), omegax/pi, abs(X2_omega), '--r')
subplot(3,2,4), plot(omegax3/pi, abs(X3_omega), omegax/pi, abs(X3_omega), '--r')
subplot(3,2,6), plot(omegax4/pi, abs(X4_omega), omegax/pi, abs(X4_omega), '--r')





