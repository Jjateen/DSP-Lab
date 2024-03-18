clc
clear all
close all
type_of_sqn=5;
n=-100:1:100;
alpha=0.5;
A=1;
M=1;
N=16;
TR=0;
[x_n] = sqn_gen_1(n, type_of_sqn,...
    alpha, A, M, N);
subplot(4,1,1), stem(n, x_n)
ylabel("x[n]");
xlabel("n");

% omega_ss=0.01*pi;
% omega_x=-1*pi:omega_ss:1*pi;
% for ii=1:length(omega_x)
%     expo(ii,:)=exp(-1j*omega_x(ii).*n);
%     term1=expo(ii,:).*x_n;
%     X_omega(1,ii)=sum(term1);
% end
[X_omega,omega_x] = DTFT_x1(n, x_n);

%---------Partical Values-----------------------
X_omega_mag=abs(X_omega);
X_omega_angle=atan(imag(X_omega)./real(X_omega));

%------Theoratical values------------------------
ss_omega=abs(omega_x(1)-omega_x(2));
for ii=1:length(omega_x)
%     X_omega_th_mag(ii,1)=1;
%     X_omega_th_angle(ii,1)=0;
    
%     X_omega_th_mag(ii,1)=1/sqrt(1+alpha^(2)-2*alpha*...
%         cos(omega_x(ii)));
%     X_omega_th_angle(ii,1)=-1*atan(alpha*sin(omega_x(ii))...
%         /(1-alpha*cos(omega_x(ii))));

%     X_omega_th_mag(ii,1)=1/sqrt(1+alpha^(-2)-2*alpha^(-1)*...
%         cos(omega_x(ii)));
%     X_omega_th_angle(ii,1)=atan(alpha^(-1)*sin(omega_x(ii))...
%         /(1-alpha^(-1)*cos(omega_x(ii))));

%     X_omega_th_mag(1,ii)=(1-alpha^(-2))/(1+alpha^(-2)...
%         -2*alpha^(-1)*cos(omega_x(ii)));
%     X_omega_th_angle(1,ii)=0;

%     X_omega_th_mag(ii,1)=sin((N+1/2)*(omega_x(ii)))/...
%         sin(omega_x(ii)/2);
%     X_omega_th_angle(ii,1)=0;

    if(omega_x(1, ii)/pi==-2*(M/N))
            X_omega_th_mag(1,ii)=pi*(1/ss_omega);
    elseif(omega_x(1, ii)/pi==2*(M/N))
         X_omega_th_mag(1,ii)=pi*(1/ss_omega);
    else
        X_omega_th_mag(1,ii)=0;
    end    
    X_omega_th_angle(1,ii)=0;

end

subplot(4,1,2), plot(omega_x/pi, X_omega_mag, ...
    omega_x/pi, X_omega_th_mag, '--k')
ylabel("|X(\omega)|");
xlabel("\omega");

subplot(4,1,3), plot(omega_x/pi, X_omega_angle, ...
    omega_x/pi, X_omega_th_angle, '--k')
ylabel("\angleX(\omega)");
xlabel("\omega");

% step_size_x=abs(omega_x(1)- omega_x(2));
% for iii=1:length(n) 
%     expo_x(iii,:)=exp(1j*n(iii).*omega_x);
%     temp1=expo_x(iii,:).*X_omega;
%     x_n_2(1,iii) = (1/(2*pi))*my_int_fun(temp1, step_size_x);
% end

[x_n_2] = IDTFT_x(X_omega, omega_x, n);
subplot(4,1,4), stem(n, (x_n_2))



figure, plot(omega_x/pi, X_omega_mag)







