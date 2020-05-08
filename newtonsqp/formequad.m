function Z=formequad(A,b,X,Y,x)

    %retourne la valeur de la forme quadratique au voisinage de chaque point
    %a partir de l'hessienne et du gradient de la fonction non quadratique
    
    [n,m]=size(X);
    for i=1:n
        for j=1:m
            h = [X(i,j);Y(i,j)]-x;
            Z(i,j)=0.5*h'*A*h+b'*h;
        end
    end