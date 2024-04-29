clc
clear all
close all
n=-40:1:40;
len_n=length(n);
alpha=0.9;
A=1;
TR=0;
[x_1_n] = sqn_gen_1(n,3, alpha, 0, 0, 0);
[x_2_n] = sqn_gen_1(n,22, 0, 0, 0, 0);
[y_1_n,n] =conv_x(n, len_n, x_1_n, x_2_n, TR);

subplot(3,2,1), stem(n, x_1_n)
ylabel("x_1[n]");
xlabel("n");

subplot(3,2,3), stem(n, x_2_n)
ylabel("x_2[n]");
xlabel("n");

subplot(3,2,5), stem(n, y_1_n)
ylabel("y_1[n]");
xlabel("n");

[Y_1_omega,omega_x] = DTFT_x1(n, y_1_n);


[X_1_omega,omega_x] = DTFT_x1(n, x_1_n);
[X_2_omega,omega_x] = DTFT_x1(n, x_2_n);

Y_2_omega=X_1_omega.*X_2_omega;

subplot(3,2,2), plot(omega_x/pi, abs(X_1_omega), 'r');
ylabel("X_1(\omega)");
xlabel("\omega");

subplot(3,2,4), plot(omega_x/pi, abs(X_2_omega), 'k');
ylabel("X_2(\omega)");
xlabel("\omega");

subplot(3,2,6), plot(omega_x/pi, abs(Y_1_omega), 'g',...
    omega_x/pi, abs(Y_2_omega), '--r' );
ylabel("Y_2(\omega)");
xlabel("\omega");


