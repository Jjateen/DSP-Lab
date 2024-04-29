clc
clear all
close all
n=-100:1:100;
len_n=length(n);

[x1] = sqn_gen_1(n,7, 1, 1, 1, 4);
[x2] = sqn_gen_1(n,5, 1, 1, 1, 3);
[xn] = (5/4)*x1.*x2;

subplot(3,1,1), stem(n, xn)
ylabel("x[n]");
xlabel("n");

[Xw,w] = DTFT_x1(n, xn);

subplot(3,1,2), plot(w/pi, abs(Xw), 'k');
ylabel("X(\omega)");
xlabel("\omega");

subplot(3,1,3), plot(w/pi, atan(imag(Xw)./real(Xw)), 'r');
ylabel("\angleX(\omega)");
xlabel("\omega");