clc
clear all
close all


n=-50:1:50;
type_of_sqn=8;
% type_of_sqn=3; % exponentail decay sqn
% type_of_sqn=4; % exponentail decay sqn
% type_of_sqn=5; % dis cos sqn
% type_of_sqn=6; % dis csin sqn
alpha=0.9;
A=1;
M=1;
N=16;
TR=0;

[x_n_1] = sqn_gen_1(n, type_of_sqn,...
    alpha, A, M, N);
[x_n, TR] = flip_sqn(length(n), x_n_1, TR);

subplot(3,1,1), stem(n, x_n )
xlabel("n")
ylabel("x[n]")

omega_step_size=0.01*pi;
omega_x=-pi:omega_step_size:pi;

for ii=1:length(omega_x)
    expox(ii,:)=exp(-1j*omega_x(ii).*n);
    temp=x_n.*expox(ii,:);
    X_omega(ii)=sum(temp);
end

%------ Theoritacal values--------------------------
for ii=1:length(omega_x)
%     X_omega_th_mag(ii)=1;
%     X_omega_th_angle(ii)=0; 

%     X_omega_th_mag(ii)=1/(sqrt(1+alpha^(2)-2*alpha...
%         *cos(omega_x(ii))));
%     X_omega_th_angle(ii)=-atan(alpha*sin(omega_x(ii))...
%         /(1-alpha*cos(omega_x(ii)))); 

%     X_omega_th_mag(ii)=1/(sqrt(1+alpha^(2)-2*alpha^(1)...
%         *cos(omega_x(ii))));
%     X_omega_th_angle(ii)=atan(alpha^(1)*sin(omega_x(ii))...
%         /(1-alpha^(1)*cos(omega_x(ii)))); 

    X_omega_th_mag(ii)=(1-alpha^2)/((1+alpha^(2)-2*alpha^(1)...
        *cos(omega_x(ii))));
    X_omega_th_angle(ii)=0; 



%      X_omega_th_mag(ii)=abs(sin(omega_x(ii)*(N+(1/2)))/...
%          sin(omega_x(ii)/2));
%     X_omega_th_angle(ii)=0; 
%        if(abs(omega_x(ii)/pi)==(M/N))
%             X_omega_th_mag(ii)=1/omega_step_size;
%        else
%            X_omega_th_mag(ii)=0;
%        end
%         X_omega_th_angle(ii)=0; 
end

%------Practical Values------------------------
for ii=1:length(omega_x)
    X_omega_mag(ii)=abs(X_omega(ii));
    X_omega_angle(ii)=atan(imag(X_omega(ii))/...
        real(X_omega(ii))); 
end

subplot(3,1,2),plot(omega_x/pi, X_omega_th_mag,' --r',...
    omega_x/pi, X_omega_mag, 'k')
xlabel("\omega")
ylabel("X(\omega)")

subplot(3,1,3),plot(omega_x/pi, X_omega_th_angle,' --r',...
    omega_x/pi, X_omega_angle, 'k')
xlabel("\omega")
ylabel("\angle X(\omega)")


















