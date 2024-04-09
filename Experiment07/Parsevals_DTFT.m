clc
clear all
close all
n=-100:1:100;
len_n=length(n);
alpha=0.5;
A=1;
M=1;
N1=8;
N2=4;
TR=0;
[x_1_n] = sqn_gen_1(n, 1, alpha, A, M, N1);
[energy_sqn] = nrgxn(x_1_n);

[X_1_omega,omega_x] = DTFT_x1(n, x_1_n);
datax_1=abs(X_1_omega);
datax2=datax_1.^2;
step_size=abs(omega_x(2)-omega_x(1));
temp=my_int_fun(datax2, step_size);
energy_fr=(1/(2*pi))*(temp);
subplot(2,1,1), stem(n, x_1_n);
subplot(2,1,2), plot(omega_x/pi, abs(X_1_omega));
[energy_sqn, energy_fr]




















