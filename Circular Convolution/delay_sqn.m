function [delayed_sqn] = delay_sqn(sqn, len_n, n, No, TR)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
for ii=1:1:len_n
    if(n(ii)==0)
        mid_index=ii;
        break;
    end
end


if(TR==0 && (No<0))
    for ii=1:1:len_n
        if(n(ii)==abs(No))
            index_of_Delay_No=ii;
            break;
        end
    end
    no_of_samples_by_shift=index_of_Delay_No-mid_index;
    iii=1;
    iiii=1;
    for ii=1:1:len_n
        if(ii+no_of_samples_by_shift>len_n)
            delayed_sqn(iii)=0;
            iii=iii+1;
        else
            delayed_sqn(iiii+ no_of_samples_by_shift)=sqn(ii);
            iiii=iiii+1;
        end
    end
    
elseif(TR==0 && (No>0))
    for ii=1:1:len_n
        if(n(ii)==-No)
            index_of_Advance_No=ii;
            break;
        end
    end
    no_of_samples_by_shift=mid_index-index_of_Advance_No;
    iii=1;
    iiii=1;
    for ii=1:1:len_n
        if(ii-no_of_samples_by_shift>0)
            delayed_sqn(iiii)=sqn(ii);
            iiii=iiii+1;
        else
            delayed_sqn2(iii)=sqn(ii);
            iii=iii+1;
        end
    end
    delayed_sqn=[delayed_sqn, delayed_sqn2];
    
elseif(TR==1 && No<0)
    for ii=1:1:len_n
        if(n(ii)==No)
            index_of_Advance_No=ii;
            break;
        end
    end
    no_of_samples_by_shift=mid_index-index_of_Advance_No;
    
    iii=1;
    iiii=1;
    for ii=1:1:len_n
        if(ii-no_of_samples_by_shift>0)
            delayed_sqn(iiii)=sqn(ii);
            iiii=iiii+1;
        else
            delayed_sqn2(iii)=0;
            iii=iii+1;
        end
    end
    delayed_sqn=[delayed_sqn, delayed_sqn2];

elseif(TR==1 && No>0)
    for ii=1:1:len_n
        if(n(ii)==abs(No))
            index_of_Delay_No=ii;
            break;
        end
    end
    no_of_samples_by_shift=index_of_Delay_No-mid_index;
    
    iii=1;
    iiii=1;
    for ii=1:1:len_n
        if(ii+no_of_samples_by_shift>len_n)
            delayed_sqn(iii)=0;
            iii=iii+1;
        else
            delayed_sqn(iiii+ no_of_samples_by_shift)=sqn(ii);
            iiii=iiii+1;
        end
    end
else
    delayed_sqn=sqn;
            
end

end



