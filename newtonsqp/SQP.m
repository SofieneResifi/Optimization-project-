function [t] = SQP( x0,y0,lambda0)
    %fonction SQP qui à partir d'un vecteur initial(x0,y0,lambda0)
    %retourne un vecteur conntennat les coordonnées des points qui 
    %conduisent au minimum local (le plus proche du point initial) 
    
    t=[x0;y0]; %vecteur coordonnées de points
    eps=1e-4;  %precision de calcul
    while(true)
        Q=hessianL(x0,y0,lambda0);
        g=gradientfct(x0,y0);
        A=gradc(x0,y0)';
        b=-c(x0,y0);
        e=eig(Q);
        v=true;
        for i=1:length(e) %tant Q est definie positive on continue le traitement
            if e(i)<=0
                v=false;
                break;
            end
        end
        if v==true
            lambda=(inv(A*(inv(Q))*A'))*(A*(inv(Q))*g+b); %paslambda
            d=(inv(Q))*(A'*lambda-g);   %vecteur pas x et y
            lambda0=lambda;
            x=x0+d(1);
            y=y0+d(2);
            t=[t [x;y]];
            if (abs(x-x0)<=eps && abs(y-y0)<=eps && abs(c(x,y))<=eps) 
                  break;
            end
            x0=x;
            y0=y;
        else
            break;
        end
  
    end
    t=t';
    
end

