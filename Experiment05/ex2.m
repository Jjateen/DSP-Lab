clc
clear all
close all

n=-50:1:50;

omega_ss=0.01*pi;
w=-1*pi:omega_ss:1*pi;
for ii=1:length(w)
    Xw(ii)=1/(1 - (0.5*exp(-1j*w(ii)))).^2;
end

subplot(2,1,1), plot(w/pi, abs(Xw));
ylabel("X(\omega)");
xlabel("\omega");
[xn] = IDTFT_x(Xw, w, n);
subplot(2,1,2), stem(n, (xn));
ylabel("x[n]_rec");
xlabel("n");