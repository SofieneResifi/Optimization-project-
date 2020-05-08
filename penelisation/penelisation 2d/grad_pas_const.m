function [xn] = grad_pas_const( X0,h,eps,e )
xn=X0;
xn1=X0;

while ((norm(grad_pen(xn(1),xn(2),e))>eps))
    xn1=xn-h*grad_pen(xn(1),xn(2),e);
    xn=xn1;
    end

end

