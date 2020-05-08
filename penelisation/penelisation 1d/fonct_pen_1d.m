function [y] = fonct_pen_1d(x,e)
z=max(0,-x);                  %z=max(0,-x) c'estnotre contrainte d'inegalite c'esta dire on va cherchele minimum de cette fonction pour x>0
y= fonc_1d(x)+ e*z.^2;
end

