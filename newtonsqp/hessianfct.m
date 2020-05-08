function [ z ] = hessianfct( x,y )
%retourne l'hessienne de la fonction utilisée au point(x,y,lambda)
z=[12*x^2 + 4*y - 42,4*x + 4*y;4*x + 4*y, 12*y^2 + 4*x - 26];
 
end

