function [outputArg1,outputArg2] = presentation
x=-5:0.1:5;
y=-5:0.1:5;
[X Y]=meshgrid(x,y);
Z=fonct(X,Y);
meshc(X,Y,Z);
axis([-5 5 -5 5,-10,10]);
r=76;
for t=[0:0.01:2*pi];
    p=r*cos(t);
    q=r*sin(t);
    set(gca,'cameraposition',[p,q,200]);
    getframe();
end
end

