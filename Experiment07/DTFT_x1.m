function [X_omega, omega_x] = DTFT_x1(...
                            n, x_n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
omega_ss=0.01*pi;
omega_x=-1*pi:omega_ss:1*pi;

for ii=1:length(omega_x)
    expo(ii,:)=exp(-1j*omega_x(ii).*n);
    term1=expo(ii,:).*x_n;
    X_omega(1,ii)=sum(term1);
end
end

