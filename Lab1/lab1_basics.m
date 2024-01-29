clc
clear all

[x,y] = meshgrid(-10:0.1:10, -10:0.1:10);
z = x.^3 + y.^2
z = reshape(z,size(x))
surf(x,y,z)
view(3)