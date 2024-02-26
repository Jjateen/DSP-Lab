clc
clear all
close all

tt=0:0.001:1;

Ts=0.01;
t=0:Ts:1;

f1=3;
f2=7;
f3=13;

s11=cos(2*pi*f1.*tt);
s1=cos(2*pi*f1.*t);

s22=cos(2*pi*f2.*tt);
s2=cos(2*pi*f2.*t);

s33=cos(2*pi*f3.*tt);
s3=cos(2*pi*f3.*t);

subplot(3,2,1),plot(tt, s11)
subplot(3,2,2),stem(t, s1)

subplot(3,2,3),plot(tt, s22)
subplot(3,2,4),stem(t, s2)

subplot(3,2,5),plot(tt, s33)
subplot(3,2,6),stem(t, s3)