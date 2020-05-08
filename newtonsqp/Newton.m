function [ t ] = Newton( x0,y0,lambda0)
 
    %fonction Newton qui � partir d'un vecteur initial(x0,y0,lambda0)
    %retourne un vecteur conntennat les coordonn�es des points qui 
    %conduisent au minimum local (le plus proche du point initial) 

    eps=1e-4;
    t=[x0;y0]; %vecteur cooredon�es de points 
    
    while(true)
        %pas grace � un DL � l'ordre 1 en x
        h=-inv((hessL(x0,y0,lambda0))')*gradientL(x0,y0,lambda0);
        x0=x0+h(1);
        y0=y0+h(2);
        t=[t [x0;y0]];
        %condition d'arret: pas faible � une pr�cision donn�e eps
        
        if(abs(h(1))<=eps && abs(h(2)<=eps))
            break;
        end
    
    end
    t=t';

end

