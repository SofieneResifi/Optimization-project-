function [ gx,gy ] = grad_pen(x,y,e)

gx=(exp(- (x + 1)^2 - y^2)*(2*x + 2))/3 + 3*exp(- (y + 1)^2 - x^2)*(2*x - 2) + exp(- x^2 - y^2)*(30*x^2 - 2) - 6*x*exp(- (y + 1)^2 - x^2)*(x - 1)^2 - 2*x*exp(- x^2 - y^2)*(10*x^3 - 2*x + 10*y^5)+(2*e)*(x+y+1);
gy=(2*y*exp(- (x + 1)^2 - y^2))/3 + 50*y^4*exp(- x^2 - y^2) - 3*exp(- (y + 1)^2 - x^2)*(2*y + 2)*(x - 1)^2 - 2*y*exp(- x^2 - y^2)*(10*x^3 - 2*x + 10*y^5)+(2*e)*(x+y+1);
 

end
