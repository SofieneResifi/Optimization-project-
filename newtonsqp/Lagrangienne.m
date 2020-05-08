function [ L ] = Lagrangienne( x,y,lambda )
    
    %Retourne la valeur de lagrangienne au point(x,y,lambda)
    L=fct(x,y)+lambda'*c(x,y);
end

