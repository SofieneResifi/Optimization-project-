function [ hL ] = hessL(x,y,lambda)
    
    %retourne l'hessienne de lagrangienne au point(x,y,lambda)
    hL=[ 12*x^2 + 2*lambda + 4*y - 42,4*x + 4*y, 2*x;4*x + 4*y, 12*y^2 + 2*lambda + 4*x - 26, 2*y;2*x,2*y,0];
     
end

