clc
clear all
close all

a = 5
b = 6
x = mod(a,2);
y = mod(b,2);

if(x==0 && y==0)
    display("Both Numbers are even");
elseif(x==0 && y==1)
        display("A is even but B is odd");
elseif(x==1 && y==0)
    display("A is odd but B is even.");
else
    display("Both A and B are odd.");
end