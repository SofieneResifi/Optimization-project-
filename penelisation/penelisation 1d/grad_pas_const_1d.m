function [xn] = grad_pas_const_1d( X0,h,eps,e )% le gradient depand d'un parametre e 
xn=X0;                                          %c'est t adire on va chercher xn pour une certaine valeur de e
xn1=X0;

while(norm(grad_1d(xn,e))>eps | norm(xn1-xn)>eps)    % les condition d'arret on va chercher le minimum de cette fonction
                                                     %en utilisant le
                                                     %gradient a pas
                                                     %constante             
    xn1=xn-h*grad_1d(xn,e);
    xn=xn1;
    end

end

