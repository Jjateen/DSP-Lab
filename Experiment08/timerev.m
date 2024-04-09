clc
clear all
close all

x_n = [0 5 8 1];
n = length(x_n);

reversed_x_n = zeros(1, n);
for i = 1:n
    reversed_x_n(i) = x_n(n - i + 1);
end

disp('Original vector:');
disp(x_n);

disp('Time-reversed vector:');
disp(reversed_x_n);
