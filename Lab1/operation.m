function [ans] = operation(a,b,op)
%Operations
if(op==0)
    ans = a+b
elseif(op==1)
    ans = a-b
elseif(op==2)
    ans = a*b
elseif(op==3)
    ans = a/b
elseif(op==4)
    ans = a^b
elseif(op==5)
    ans = mod(a,b)
end

