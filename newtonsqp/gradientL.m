function [g] = gradientL( x,y,lambda)

 g=[2*x + 4*x*(x.^2 + y - 11) + 2*x*conj(lambda) + 2*y.^2 - 14;2*y + 4*y*(y.^2 + x - 7) + 2*y*conj(lambda) + 2*x.^2 - 22;x.^2 + y.^2 - 16];
 
end

