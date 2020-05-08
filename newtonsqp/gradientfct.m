function [ G ] = gradientfct(x,y)

    %retourne le gradient de la fct
    gx= 2*x + 4*x.*(x.^2 + y - 11) + 2*y.^2 - 14;
    gy= 2*y + 4*y.*(y.^2 + x - 7) + 2*x.^2 - 22;
    G=[ gx; gy] ; 
end

