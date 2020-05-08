function [ Z ] = gradc( x,y )
    
    %retourne le gradient de la contrainte
    zx=2*x;
    zy=1;
    Z=[zx;zy];
end

