function [H] = hessianL(x,y,lambda)

    %retourne l'hessienne de lagrangienne au point(x,y,lambda) sans 
    %la partie qui comporte les dérivés par rapport à lambda (utilisé en SQP)
    H=[12*x^2 - 2*lambda + 4*y - 42,4*x + 4*y;  4*x + 4*y,12*y^2 + 4*x - 24];
 
end

 
