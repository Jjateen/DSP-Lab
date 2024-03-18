function [X_omega, omega_x] = DTFT_x1(n, x_n)
    % Compute the Discrete Time Fourier Transform (DTFT) of signal x_n
    
    % Define the frequency range
    omega_ss = 0.001 * pi;
    omega_x = -pi:omega_ss:pi;

    % Initialize DTFT
    X_omega = zeros(size(omega_x));

    % Check dimensions
    if length(n) ~= length(x_n)
        error('The lengths of n and x_n must be the same.');
    end
    
    % Compute DTFT
    for ii = 1:length(omega_x)
        expo = exp(-1j * omega_x(ii) * n);
        term1 = expo .* x_n;
        X_omega(ii) = sum(term1);
    end
end
