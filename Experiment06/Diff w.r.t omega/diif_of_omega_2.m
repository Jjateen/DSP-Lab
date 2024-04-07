clc
clear all
close all

n=-100:1:100;
len_n=length(n);

alpha=0.5;
A=1;
M=1;
N1=4;
[x_1_n] = sqn_gen_1(n,7, alpha, A, M, N1);
subplot(3,1,1),stem(n, x_1_n);

x_2_n=x_1_n.*n;
subplot(3,1,2),stem(n, x_2_n);

[X_omega, omega_x] = DTFT_x1(n, x_2_n);

subplot(3,1,3),plot(omega_x/pi, imag(X_omega));


