clc
clear all
close all

n = -100:1:100;
len_n = length(n);

alpha = 0.5;
A = 1;
M = 3;
N1 = 16;
[x_1_n] = sqn_gen_1(n, 7, alpha, A, M, N1);
subplot(4,1,1), stem(n, x_1_n);

x_2_n = x_1_n.*n;
subplot(4,1,2), stem(n, x_2_n);

[X_2omega, omega_x] = DTFT_x1(n, x_2_n);
[X_1omega, omega_x] = DTFT_x1(n, x_1_n);

% Interpolate X_1omega to match the length of omega_x
X_1omega_interp = interp1(omega_x, X_1omega, linspace(min(omega_x), max(omega_x), numel(omega_x)));

% Compute differentiation of X1omega with respect to omega_x
diff_X_1omega = (diff(X_1omega_interp) ./ diff(omega_x))*1j;
subplot(4,1,3), plot(omega_x/pi, imag(X_2omega));
% Plot differentiation of X1omega with respect to omega_x
subplot(4,1,4), plot(omega_x(1:end-1)/pi, imag(diff_X_1omega));
xlabel("\omega");
ylabel("dX_1(\omega)/d\omega");
