clc
clear all
close all
n=-25:1:25;
[x1] = zeros(1,length(n));
[x2] = zeros(1,length(n));
[x3] = zeros(1,length(n));
for ii=1:1:length(n)
    if(n(ii)<-15)
        x1(ii)=0;
    elseif(n(ii)>15)
        x1(ii)=0;
    else
        x1(ii)=0;
    end
end 

for ii=1:1:length(n)
    if(n(ii)<=15 && n(ii)>10)
        x2(ii)=1.5;
    elseif(n(ii)>=-15 && n(ii)<-10)
        x2(ii)=1.5;
    else
        x2(ii)=0;
    end
end 

for ii=1:1:length(n)
    if(n(ii)<=10 && n(ii)>=0)
        x3(ii)=2.5;
    elseif(n(ii)>=-10 && n(ii)<=0)
        x3(ii)=2.5;
    else
        x3(ii)=0;
    end
end
yn = x1 +x2+ x3;
subplot(4,2,1), stem(n,x1);
subplot(4,2,3), stem(n,x2);
subplot(4,2,5), stem(n,x3);
subplot(4,2,7), stem(n,yn);

[X1,w] =  dtftx(x1,n);
[X2,w] =  dtftx(x2,n);
[X3,w] =  dtftx(x3,n);
[Yw,w] =  dtftx(yn,n);

YwR = X1+X2+X3;

subplot(4,2,2), plot(w/pi,abs(X1));
subplot(4,2,4), plot(w/pi,abs(X2));
subplot(4,2,6), plot(w/pi,abs(X3));
subplot(4,2,8), plot(w/pi,abs(Yw), 'g',...
    w/pi, abs(YwR), '--r');
%Final subplot for Yw = DTFT(yn) and YwR = X1+X2+X3, since they are
%equal/overlapping linearity is verified.



