clc
clear all
close all

N = 16;
n = 0:1:N-1;
k = 0:1:N-1;
[x_n] = zeros(1,N);
for ii = 1:N
    % if(n(ii)==3)
    %     x_n(ii) = 1;
    % else
    %     x_n(ii) = 0;
    % end
    x_n(ii) = cos((pi/4)*n(ii));
end
subplot(4,1,1),stem(n,x_n,'b');
xlabel("n");
ylabel("x(n)");

[X] = DFT(x_n,N,n,k);
X_mag = abs(X);
X_ang = atan(imag(X)./real(X));

x_n_rec = IDFT(X,N,n,k);

subplot(4,1,2),stem(k,X_mag,'k');
xlabel("k");
ylabel("|X(k)|");

subplot(4,1,3),stem(k,X_ang,'g');
xlabel("k");
ylabel("\angle X(k)");

subplot(4,1,4),stem(n,x_n_rec,'r');
xlabel("n");
ylabel("x_r(n)");