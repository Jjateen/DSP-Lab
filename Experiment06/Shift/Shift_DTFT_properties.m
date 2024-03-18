clc
clear all
close all
n=-50:1:50;
len_n=length(n);
alpha=0.7;
A=1;
M=1;
N1=5;
N2=1;
TR=0;
[g_1_n] = sqn_gen_1(n,6,alpha, A, M, N1);
[g_2_n] = delay_sqn(g_1_n, len_n, n, -5,0);

subplot(4,1,1), stem(n, g_1_n)
ylabel("x[n]");
xlabel("n");

subplot(4,1,2), stem(n, g_2_n)
ylabel("x[n]");
xlabel("n");

[G_1_omega,omega_x] = DTFT_x1(n, g_1_n);
[G_2_omega,omega_x] = DTFT_x1(n, g_2_n);

G_3_omega=exp(-1j.*omega_x*10).*G_1_omega;


subplot(4,1,3), plot(omega_x/pi, abs(G_2_omega), 'r', ...
    omega_x/pi, abs(G_3_omega), '--g');
ylabel("|X(\omega)|");
xlabel("\omega");

G_3_omega_angle=atan(imag(G_3_omega)./real(G_3_omega));
G_2_omega_angle=atan(imag(G_2_omega)./real(G_2_omega));

subplot(4,1,4), plot(omega_x/pi, (G_2_omega_angle), 'r', ...
    omega_x/pi, (G_3_omega_angle), '--g');
ylabel("\angleX(\omega)");
xlabel("\omega")

%---------Partical Values-----------------------
% X_omega_mag=abs(X_omega);
% X_omega_angle=atan(imag(X_omega)./real(X_omega));



% subplot(4,1,2), plot(omega_x/pi, X_omega_mag, ...
%     omega_x/pi, X_omega_th_mag, '--k')
% ylabel("|X(\omega)|");
% xlabel("\omega");
% 
% subplot(4,1,3), plot(omega_x/pi, X_omega_angle, ...
%     omega_x/pi, X_omega_th_angle, '--k')
% ylabel("\angleX(\omega)");
% xlabel("\omega");


% [x_n_2] = IDTFT_x(X_omega, omega_x, n);
% subplot(4,1,4), stem(n, (x_n_2))











