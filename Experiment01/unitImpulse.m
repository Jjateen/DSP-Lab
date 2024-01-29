clc
clear all
close all

n = -20 : 1 : 20;

digital_sqn_1 = zeros(size(n));
digital_sqn_2 = zeros(size(n));

for ii = 1:1:length(n)
    if(n(ii) == 0)
        digital_sqn_1(ii) = 1;
    else
        digital_sqn_1(ii) = 0;
    end
end

for ii = 1:1:length(n)
    if(n(ii) >= 0)
        digital_sqn_2(ii) = exp(-0.1 * n(ii));
    else
        digital_sqn_2(ii) = 0;
    end
end

% Plotting the stem plots
figure;
stem(n, digital_sqn_1, 'b', 'LineWidth', 2); % Blue stems for digital_sqn_1
hold on; % Keep the current plot and add another
stem(n, digital_sqn_2, 'r', 'LineWidth', 2); % Red stems for digital_sqn_2

% Plotting the 3D plot using plot3
figure;
plot3(n, n.*digital_sqn_2.^3, digital_sqn_2, 'LineWidth', 2);
xlabel('n');
ylabel('n .* digital\_sqn\_2');
zlabel('digital\_sqn\_2');
title('3D Plot');

grid on;
