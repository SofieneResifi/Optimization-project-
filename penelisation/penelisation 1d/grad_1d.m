function [y] = grad_1d(x,e)
z=min(0,x);          
y=deriv_1d(x)+(2*e)*z;
end

