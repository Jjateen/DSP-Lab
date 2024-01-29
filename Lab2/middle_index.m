clc
clear all
close all

for ii = 0:1:20
    x(ii+1) = 2*ii;
    x(ii+1)
end

lenght_of_vector = length(x)
mod_of_lenght_of_vector = mod(lenght_of_vector,2)

if(mod_of_lenght_of_vector == 0)
    display("Length is even");
else
    display("Length is odd");
    middle_index = ((lenght_of_vector+1)/2);
end