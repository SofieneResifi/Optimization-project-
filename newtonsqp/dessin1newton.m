%Permet de dessiner la fct dans l'espace
%determiner un minimum local à partir d'un point initial
%grace à la methode Newton

close
x=-10:0.1:10;
y=-10:0.1:10;
[X Y]=meshgrid(x,y);
Z=fct(X,Y);
meshc(X,Y,Z);
title('Recherche du minimum avec la méthode de Newton');
hold on;
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-5 5 -5 5 -5 1000])
plot3(xc,yc,fct(xc,yc),'k');

%tic et toc permettent de calculer le temps d'excution d'une instruction

tic;
t=Newton(-5,-5,500);
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
    plot3(t1(i),t2(i),fct(t1(i),t2(i)),'k*');
    getframe();
    pause(1);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],[fct(t1(i+1),t2(i+1)),fct(t1(i),t2(i))],'color','r');
    pause(1) ;
    plot3(t1(i+1),t2(i+1),fct(t1(i+1),t2(i+1)),'k*');
    pause(1);
end