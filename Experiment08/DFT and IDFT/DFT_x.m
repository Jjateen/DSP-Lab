function [X, k] = DFT_x...
    (x_n, N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=0:1:N-1;
k=0:1:N-1;
for ii=1:N %n
    for jj=1:N%k
        D(jj,ii)=exp(-1j*(2*pi/N)*n(ii)*k(jj));
    end
end
X1=D*x_n';
X=X1';
end

