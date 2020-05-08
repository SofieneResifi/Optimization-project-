function [xn,l] = grad_pas_const( X0,h,eps,e )

xn=X0;
xn1=X0;
l=[];
while(norm(grad_pen(xn(1),xn(2),e))>eps | norm(xn1-xn)>eps)
    xn1=xn-h*grad_pen(xn(1),xn(2),e);
    l=[l;xn];
    xn=xn1;
    end

end

