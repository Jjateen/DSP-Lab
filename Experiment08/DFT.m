function [X] = DFT(x_n,N,n,k)
    [D] = zeros(N);
    for ii = 1:N    %n
        for jj = 1:N  %k
            D(jj,ii)= exp(-1*j*(2*pi/N)*n(ii)*k(jj));
        end
    end
    X = D*x_n';
end