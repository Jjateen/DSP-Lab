clc
clear all
close all
n=-100:1:100;
len_n=length(n);
alpha=0.7;
A=1;
M=1;
N1=4;
N2=1;
TR=0;
[g_1_n] = sqn_gen_1(n,7, alpha, A, M, N1);
subplot(4,1,1), stem(n, g_1_n)
ylabel("g_n[n]");
xlabel("n");

% g_2_n=exp(1j*pi.*n).*g_1_n;
g_2_n=cos((pi/4).*n).*g_1_n;
subplot(4,1,2), stem(n, g_2_n)
ylabel("g_2[n]");
xlabel("n");


[G_1_omega,omega_x] = DTFT_x1(n, g_1_n);
[G_2_omega,omega_x] = DTFT_x1(n, g_2_n);


subplot(4,1,3), plot(omega_x/pi, abs(G_1_omega), 'r');
ylabel("G(\omega)");
xlabel("\omega");

subplot(4,1,4), plot(omega_x/pi, abs(G_2_omega), 'r');
ylabel("G(\omega)");
xlabel("\omega");
















