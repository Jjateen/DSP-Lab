clc 
clear all
close all

n = -60:1:60;
% seq_gen(n,type_of_sqn,alpha,Amp,M,N)
[digital_sqn_1] = seq_gen(n, 1, 1, 1, 1, 1);    % Impulse sequence
[digital_sqn_2] = seq_gen(n, 2, 1, 1, 1, 1);    % Unit Step sequence
[digital_sqn_3] = seq_gen(n, 3, 0.7, 1, 1, 1);  % Exponential Decay sequence
[digital_sqn_4] = seq_gen(n, 4, 0.7, 1, 1, 50); % Amp*cos(2*pi*(M/N)*n)
[digital_sqn_5] = seq_gen(n, 5, 0.7, 1, 1, 50); % Amp*sin(2*pi*(M/N)*n)
[digital_sqn_6] = seq_gen(n, 9, 1, 1, 1, 25); %gate function
[digital_sqn_7] = seq_gen(n, 8, 0.7, 1, 1, 50); % Sinc function
figure;
stem(n, digital_sqn_1);
xlabel("n");
ylabel("x[n]");
title("Impulse Sequence");

figure;
stem(n, digital_sqn_2);
xlabel("n");
ylabel("x[n]");
title("Unit Step Sequence");

figure;
stem(n, digital_sqn_3);
xlabel("n");
ylabel("x[n]");
title("Exponential Decay Sequence");

figure;
stem(n, digital_sqn_4);
xlabel("n");
ylabel("x[n]");
title("Amp*cos(2*pi*(M/N)*n)");

figure;
stem(n, digital_sqn_5);
xlabel("n");
ylabel("x[n]");
title("Amp*sin(2*pi*(M/N)*n)");

figure;
stem(n, digital_sqn_6);
xlabel("n");
ylabel("x[n]");
title("Gate Sequence");

figure;
stem(n, digital_sqn_7);
xlabel("n");
ylabel("x[n]");
title("Sinc Sequence");

figure;
stem(n, digital_sqn_4.*digital_sqn_6);
xlabel("n");
ylabel("x[n]");
title("COS*GATE Sequence");

% Create a 3D plot with n, sin(n), and cos(n)
figure;
plot3(n, digital_sqn_4, digital_sqn_5, 'LineWidth', 2);
xlabel("n");
ylabel("sin(n)");
zlabel("cos(n)");
title("3D Plot of sin(n) and cos(n)");
grid on;

% e1 = erg(digital_sqn_1);
% e2 = erg(digital_sqn_2);
% e3 = erg(digital_sqn_3);
% e4 = erg(digital_sqn_4);
% e5 = erg(digital_sqn_5);
% e6 = erg(digital_sqn_6);
% e7 = erg(digital_sqn_7);

digital_sequences = {digital_sqn_1, digital_sqn_2, digital_sqn_3, digital_sqn_4, digital_sqn_5, digital_sqn_6, digital_sqn_7};

for i = 1:7
    energy = erg(digital_sequences{i});
    fprintf('Energy of digital sequence %d is = %f\n', i, energy);
end
