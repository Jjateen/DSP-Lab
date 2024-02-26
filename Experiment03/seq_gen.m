function [digital_sqn] = seq_gen(n,type_of_sqn,alpha,Amp,M,N)

if(type_of_sqn==1)
    for ii = 1:1:length(n)
        if(n(ii)==0)
            digital_sqn(ii) = 1
        else
            digital_sqn(ii) = 0
        end
    end
    
elseif (type_of_sqn==2)
    for ii = 1:1:length(n)
        if(n(ii)>=0)
            digital_sqn(ii) = 1
        else
            digital_sqn(ii) = 0
        end
    end
    
elseif (type_of_sqn==3)
    for ii = 1:1:length(n)
        if(n(ii)>=0)
            digital_sqn(ii) = alpha^n(ii)
        else
            digital_sqn(ii) = 0
        end
    end
    
elseif (type_of_sqn==4)
    for ii = 1:1:length(n)
            digital_sqn(ii) = Amp*cos(2*pi*(M/N)*n(ii))  %
    end
    
elseif (type_of_sqn==5)
    for ii = 1:1:length(n)
            digital_sqn(ii) = Amp*sin(2*pi*(M/N)*n(ii)) 
    end
    
    elseif(type_of_sqn==8)
    for ii=1:1:length(n)
        if(n(ii)==0)
           digital_sqn(ii)=Amp*M; 
        else
          digital_sqn(ii)=Amp*M*sin(2*pi*(M/N)*n(ii))/(2*pi*(M/N)*n(ii)); 
        end
    end
 elseif(type_of_sqn==9)
    for ii=1:1:length(n)
        if(n(ii)<-N/2)
           digital_sqn(ii)=0; 
        elseif(n(ii)>=-N/2 && n(ii)<=N/2)
          digital_sqn(ii)=Amp;
        else
          digital_sqn(ii)=0;
        end
    end
end


end