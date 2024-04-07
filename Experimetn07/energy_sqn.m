function [energy_sqn] = energy_sqn(sqn)
%Energy of the sqn

energy_sqn = sum(abs(sqn).^2);

end

