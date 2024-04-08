function [x_n_2] = IDTFT_x(...
    X_omega, omega_x, n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

step_size_x=abs(omega_x(1)- omega_x(2));
for iii=1:length(n) 
    expo_x(iii,:)=exp(1j*n(iii).*omega_x);
    temp1=expo_x(iii,:).*X_omega;
    x_n_2(1,iii) = (1/(2*pi))*my_int_fun(temp1, step_size_x);
end
end

