clc
clear all
close all
n=-100:1:100;
len_n=length(n);

%Generating sequences
[delta] = sqn_gen_1(n, 1, 0, 0, 0, 0);
[exp_rhs] = sqn_gen_1(n, 3, 0.9, 0, 0, 0);
[exp_dual] = sqn_gen_1(n, 8, 0.9, 0, 0, 0);
[gate] = sqn_gen_1(n, 6, 0, 0, 0, 50);
[sinc] = sqn_gen_1(n, 7, 0, 0, 0, 20);

%Generating their DTFTs
[D,omega_d] = DTFT_x1(n, delta);
[ER,omega_er] = DTFT_x1(n, exp_rhs);
[ED,omega_ed] = DTFT_x1(n, exp_dual);
[G,omega_g] = DTFT_x1(n, gate);
[S,omega_s] = DTFT_x1(n, sinc);

%Plotting Sequences and their respective DTFTs
subplot(5,2,1), stem(n, delta); subplot(5,2,2), plot(omega_d/pi, abs(D));
subplot(5,2,3), stem(n, exp_rhs); subplot(5,2,4), plot(omega_er/pi, abs(ER));
subplot(5,2,5), stem(n, exp_dual); subplot(5,2,6), plot(omega_ed/pi, abs(ED));
subplot(5,2,7), stem(n, gate); subplot(5,2,8), plot(omega_g/pi, abs(G));
subplot(5,2,9), stem(n, sinc); subplot(5,2,10), plot(omega_s/pi, abs(S));

%Calculating energy using x[n] i.e. LHS of Parseval's Theorem
[energy_d] = nrgxn(delta);
[energy_er] = nrgxn(exp_rhs);
[energy_ed] = nrgxn(exp_dual);
[energy_g] = nrgxn(gate);
[energy_s] = nrgxn(sinc);

%Calculating energy using X(w) via DTFT i.e. RHS of Parseval's Theorem
[energy_D] = nrgXw(n,delta);
[energy_ER] = nrgXw(n,exp_rhs);
[energy_ED] = nrgXw(n,exp_dual);
[energy_G] = nrgXw(n,gate);
[energy_S] = nrgXw(n,sinc);

table_data = {
    'Signal', 'LHS Energy', 'RHS Energy';
    'delta', energy_d, energy_D;
    'right sided exponential', energy_er, energy_ER;
    'dual sided exponential', energy_ed, energy_ED;
    'gate', energy_g, energy_G;
    'sinc', energy_s, energy_S
};

% Display table
f = figure;
uitable(f, 'Data', table_data, 'Position', [0 0 600 400], ...
    'FontSize', 14, 'ColumnWidth', {200, 165, 165});