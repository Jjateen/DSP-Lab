function [x_r, n] = IDFT_x...
    (X_k, N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=0:1:N-1;
k=0:1:N-1;
for ii=1:N %n
    for jj=1:N%k
        D(jj,ii)=exp(1j*(2*pi/N)*n(ii)*k(jj));
    end
end
x1=(1/N)*D*X_k';
x_r=x1';
end

