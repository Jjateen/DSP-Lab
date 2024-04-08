function [shifted_x_n] = shiftcirc(x_n,k)
    n = length(x_n);
    shifted_x_n = zeros(1, n);
    for i = 1:n
        new_index = mod(i - 1 + k, n) + 1;
        shifted_x_n(new_index) = x_n(i);
    end
end