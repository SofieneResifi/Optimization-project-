function [ gx,gy ] = grad_pen(x,y,e)


  
gx=2*x + 4*x*(x^2 + y - 11) + 2*y^2 - 14+2*e*(x+y-1);
gy=2*y + 4*y*(y^2 + x - 7) + 2*x^2 - 22+2*e*(x+y-1);
end

