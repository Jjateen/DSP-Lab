function [energy_sqn] = nrgxn(sqn)
%Energy of the sqn

energy_sqn = sum(abs(sqn).^2);

end

