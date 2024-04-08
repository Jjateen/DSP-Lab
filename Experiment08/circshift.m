clc
clear all
close all

x_n = [0 5 8 1];
k = 2;

shifted_x_n = shiftcirc(x_n,k);

disp('Original vector:');
disp(x_n);

disp('Shifted vector:');
disp(shifted_x_n);