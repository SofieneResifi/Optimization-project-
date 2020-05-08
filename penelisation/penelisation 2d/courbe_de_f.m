x= -5:0.1:5;
y= -5:0.1:5;
L=[0.1:1:100];
[X , Y]= meshgrid(x,y);
Z =fonct(X,Y);
s=meshc(X, Y, Z);
% s.EdgeColor='none';
hold on;
axis([-5 5 -5 5 0 2000]);

for i=1:length(L)
    r=L(i);
    z= fct_penalise(X,Y,r);
    k=meshc(X,Y,z);
    getframe();
    %pause(0.1)
    delete(k)
    hold on;
end
z= fct_penalise(X,Y,r);
k=surf(X,Y,z);
hold off;
% x1= -3:0.1:5;
% y1= -5:0.1:5;
% [X1 , Y1]= meshgrid(x1,y1);
% Z1=f(X1,Y1);
% contour(X1,Y1,Z1,50);


