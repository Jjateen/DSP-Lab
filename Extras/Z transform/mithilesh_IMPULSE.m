clc
clear all
close all

n=-50:1:50;
len_n=length(n);
alpha=0.9;
k = 7;
a = 7;
TR = 0;
[xn] = sqn_gen_1(n, 1, alpha, 1, 0, 0);
[x2] = delay_sqn(xn, len_n, n, k, TR);
[yn] = xn + a*x2;
Yz = zt(n,yn);












