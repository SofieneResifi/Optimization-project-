function  presentation
x=-5:0.1:5;
y=-5:0.1:5;
[X Y]=meshgrid(x,y);
Z=fonct(X,Y);
mesh(X,Y,Z);
axis([-5 5 -5 5,-100,1000]);
r=100;
for t=[0:0.01:2*pi];
    p=r*cos(t);
    q=r*sin(t);
    set(gca,'cameraposition',[q,p,-10]);
    getframe();
end
end

