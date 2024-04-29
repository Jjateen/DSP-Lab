clc
clear all
close all

N=32;
n=0:1:N-1;
k=0:1:N-1;

for ii=1:N
%     if(n(ii)==3)
%         x_n(ii)=1;
%     else
%         x_n(ii)=0;
%     end
x_n(ii)=cos((pi/4)*n(ii));
end
subplot(4,1,1), stem(n, x_n);
xlabel("n");
ylabel("x(n)");

[X, k] = DFT_x(x_n, N);
X_mag=abs(X);
X_ang=atan(imag(X)./real(X));
subplot(4,1,2), stem(k, X_mag, 'r');
xlabel("k");
ylabel("|X(k)|");

subplot(4,1,3), stem(k, X_ang, 'g');
xlabel("k");
ylabel("/angle X(k)");


[x_r, n] = IDFT_x...
    (X, N);
subplot(4,1,4), stem(n, x_r, 'b');
xlabel("n");
ylabel("x_r(n)");
temp=abs(x_n);
temp2=temp.^2;
er_n=sum(temp2);

temp3=abs(X);
temp4=temp3.^2;
er_k=(1/N)*sum(temp4);
[er_n er_k]

        






