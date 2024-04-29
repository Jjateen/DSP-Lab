function [conv_output, n] = clconv(n, len_n, seq2, seq1)
% Circular Convolution using Linear Convolution
% n: time index vector
% len_n: length of time index vector
% seq2: sequence 2
% seq1: sequence 1

% Extend both sequences to match the length for circular convolution
extended_len = len_n + len_n - 1;
seq1_ext = [seq1, zeros(1, len_n - 1)];
seq2_ext = [seq2, zeros(1, len_n - 1)];

% Perform linear convolution
conv_output = conv(seq1_ext, seq2_ext);
% Circular shift to match the original length
temp = conv_output(len_n+1:end);
temp = [temp, zeros(1, length(conv_output) - length(temp))];

conv_output = conv_output + temp;
conv_output = conv_output(1:len_n);
% Output time index vector
n = n(1):n(end);

end
