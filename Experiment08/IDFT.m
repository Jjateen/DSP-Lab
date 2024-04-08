function [x_n_rec] = IDFT(X,N,n,k)
    [D_inv] = zeros(N);
    for ii=1:N %n
        for jj=1:N %k
            D_inv(jj,ii)=exp(1j*(2*pi/N)*n(ii)*k(jj));
        end
    end
    x_n_rec = X'*(1/N)*D_inv;
end