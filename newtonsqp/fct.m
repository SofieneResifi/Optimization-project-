function [ z ] = fct( x,y )
    
    %la fct à minimiser
    z = (x.^2+y-11).^2+(x+y.^2-7).^2; 
end

