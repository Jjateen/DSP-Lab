clc
clear all
close all

x_n = [0 5 8 1];
k = 5;

N = 15;
n = 0:1:N-1;
% k = 0:1:N-1;
[x_n] = zeros(1,N);
for ii = 1:N
     if(n(ii)>=0)
        x_n(ii) = (0.9)^n(ii);
    else
        x_n(ii) = 0;
     end
end
shifted_x_n = shiftcirc(x_n,k);

disp('Original vector:');
disp(x_n);

disp('Shifted vector:');
disp(shifted_x_n);

reversed_x_n = x_n(end:-1:1);

disp('Time-reversed vector:');
disp(reversed_x_n);

subplot(3,1,1), stem(n, x_n);
xlabel("n")
ylabel("x(n)")

subplot(3,1,2), stem(n, shifted_x_n);
xlabel("n")
ylabel("x(n) circshift by 5")

subplot(3,1,3), stem(n, reversed_x_n);
xlabel("n")
ylabel("x(n) time rev")
