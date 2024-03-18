clc
clear all
close all

n = -18:1:18;
type_of_sqn = 5;
alpha = 0.5;
A = 1;
M = 1;
N = 16;
TR = 0;
[x1] = sqn_gen_1(n, 7, alpha, A, M, (pi/1));
[x2] = sqn_gen_1(n, type_of_sqn, alpha, A, M, N);

% Zero-padding to ensure resulting vector length is appropriate
L = length(x1) + length(x2) - 1;
x1_padded = [x1, zeros(1, L - length(x1))];
x2_padded = [x2, zeros(1, L - length(x2))];

[y_n] = conv(x1_padded, x2_padded);

% Define the appropriate range of 'n' for plotting
n_conv = (1-length(y_n))/2 : (length(y_n)-1)/2;

subplot(3, 2, 1), stem(n, x1, 'r')
ylabel("x1[n]");
xlabel("n");
subplot(3, 2, 3), stem(n, x2, 'b')
ylabel("x2[n]");
xlabel("n");
subplot(3, 2, 5), stem(n_conv, y_n,'k')
ylabel("y[n]");
xlabel("n");

[X_omega1,omega_x1] = DTFT_x1(n, x1);
[X_omega2,omega_x2] = DTFT_x1(n, x2);
X_omega_mag1=abs(X_omega1);
X_omega_mag2=abs(X_omega2)
[X_omega3,omega_x3] = DTFT_x1(n_conv, y_n);
X_omega_mag3=abs(X_omega3);

% figure;
subplot(3,2,2), plot(omega_x1/pi, X_omega_mag1, 'r')
ylabel("|X1(\omega)|");
xlabel("\omega");

subplot(3,2,4), plot(omega_x2/pi, X_omega_mag2, 'b')
ylabel("|X2(\omega)|");
xlabel("\omega");

subplot(3,2,6), plot(omega_x3/pi, X_omega_mag3, 'k')
ylabel("|X3(\omega)|");
xlabel("\omega");

