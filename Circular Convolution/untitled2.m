% Example usage
n = 0:3; % Time index vector
seq1 = [1, 3, 2, 1]; % Sequence 1
seq2 = [1, 1, -1, 1]; % Sequence 2

[conv_output, n] = clconv(n, length(n), seq2, seq1);
conv_output