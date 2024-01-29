clc 
clear all

a = magic(5)

c0 = a(2,:)
c1 = a(:,2)
c2 = a(2:4, 1:3)

c(1,:) = a(1,:); c(2,:) = a(5,:)

b = a(1:2:3, 2:3:5)