clc
clear all
close all

n=-50:1:50;
len_n=length(n);
alpha=0.7;
A=1;
M=1;
N1=6;
N2=3;
TR=0;
[xn] = sqn_gen_1(n, 3, alpha, A, M, N1);
Xz = zt(n,xn);

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











