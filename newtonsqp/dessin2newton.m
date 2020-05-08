%Permet les contours de la fct dans un plan
%determiner un minimum local à partir d'un point initial
%grace à la methode Newton

close
x=-10:0.1:10;
y=-10:0.1:10;
[X Y]=meshgrid(x,y);
Z=fct(X,Y);
contour(X,Y,Z,50);
title('Recherche du minimum avec Newton (contours)');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
tic;
t=Newton(-5,-5,0);
toc;
t1=t(:,1);
t2=t(:,2);
disp('Nombre d"iteration :');
disp(length(t1));
disp('Point d"arrivé');
disp(t1(length(t1)));
disp(t2(length(t2)));

% pour dessiner les points et les relier par des lignes

for i=1:length(t1)-1
    plot(t1(i),t2(i),'k*');
    pause(2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(2);
end
