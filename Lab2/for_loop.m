clc
clear all
close all
a=12;

[x] = zeros(12,1);

for ii = 0 : 1 : 10
    x (ii+1) = a * ii
%     pause
end