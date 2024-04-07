function [int_ans] = my_int_fun(data, step_size)
%Integration function
%   Detailed explanation goes here

int_ans=(step_size/2)*...
    (data(1,1)+data(1,end)...
    +2*sum(data(1,2:end-1)));
end

