function [z_x] = zt(n, g_1_n)
    re_z=-2:0.01:2;
    im_z=-2:0.01:2;
    for ii=1:length(re_z)
        for jj=1:length(im_z)
            z_plan(ii,jj)=re_z(ii)+1j*im_z(jj);
            z_pan_abs(ii,jj)=abs(z_plan(ii,jj));
        end
    end
    
    [X, Y]=meshgrid(re_z, im_z);
    
    
    for ii=1:length(re_z)
        for jj=1:length(im_z)
            [G_1_z(jj,ii,:),omega_x] = DTFT_x1...
            (n, (z_pan_abs(ii,jj).^-n).*g_1_n);
        end
    end
    
    for ii=1:length(re_z)
        for jj=1:length(im_z)
            z_x(ii,jj)=sum(abs(G_1_z(ii,jj,:)));
        end
    end
    subplot(3,1,1), stem(n, g_1_n)
    ylabel("x(n)");
    xlabel("n");
    subplot(3,1,2),surf(X, Y, 10*log10(z_x), 'linestyle','none');
    colorbar('Direction','reverse')
    colormap(jet);
    ylabel("Image(z)");
    xlabel("Real(z)");
    
    subplot(3,1,3),image( [re_z(1,1), re_z(1,end)], [im_z(1, end), im_z(1,1)] ,10*log10(z_x));
    colorbar('Direction','reverse')
    ylabel("Image(z)");
    xlabel("Real(z)");
end