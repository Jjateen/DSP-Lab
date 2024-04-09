function [energy_fr] = nrgXw(n, x_n)
    [X_1_omega,omega_x] = DTFT_x1(n, x_n);
    datax_1=abs(X_1_omega);
    datax2=datax_1.^2;
    step_size=abs(omega_x(2)-omega_x(1));
    temp=my_int_fun(datax2, step_size);
    energy_fr=(1/(2*pi))*(temp);
end