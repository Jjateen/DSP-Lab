function [X_omega,omegax] = ...
    dtftx(x_n,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
omega_ss=0.001*pi;
omegax=-pi:omega_ss:pi;
for ii=1:length(omegax)
    expo(ii,:)=exp(-1j*omegax(ii).*n);
    temp1=x_n.*expo(ii,:);
    X_omega(1, ii)=sum(temp1);
end
end

