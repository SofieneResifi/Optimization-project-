function [z] = fct_penalise(x,y,e)
z=fonct(x,y)+((x+y -1).^2)*e;

end

