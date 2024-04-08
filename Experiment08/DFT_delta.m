clc
clear all
close all

N = 8;
N2 = 16;
n=0:1:N-1;
n2=0:1:N2-1;
k=0:1:N-1;

[x_n] = zeros(1,N);
[D] = zeros(N);

for ii=1:N
    if (n(ii)==0)
        x_n(ii)=1;
    else 
        x_n(ii)=0;
    end
end

subplot(4,1,1), stem(n, x_n);
xlabel("n")
ylabel("x(n)")

for ii=1:N %n
    for jj=1:N %k
        D(jj,ii)=exp(-1j*(2*pi/N)*n(ii)*k(jj))
    end
end

X = D*x_n';
X_mag = abs(X);
X_ang = atan(imag(X)./real(X));

subplot(4,1,2), stem(k,X_mag);
xlabel("n")
ylabel("|X(k)|")

subplot(4,1,3), stem(k,X_ang);
xlabel("n")
ylabel("\angleX(k)")

[D_inv] = zeros(N)
for ii=1:N %n
    for jj=1:N %k
        D_inv(jj,ii)=exp(1j*(2*pi/N)*n(ii)*k(jj))
    end
end

x_n_rec = X'*(1/N)*D_inv;
subplot(4,1,4), stem(n, x_n_rec);
xlabel("n")
ylabel("x(n) recovered")