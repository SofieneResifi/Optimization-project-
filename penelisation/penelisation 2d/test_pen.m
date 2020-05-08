% lorsque e tend vers l'infinie (on doit changer le pas ) on remarque que le
% minimum de la fonction penalisé tend vers le minimum du probleme

e=1;
h=0.01;
eps=1e-4;
L=[];
k=0;

%X0=[5 -1];
%X0=[-4 2]; % les points intiales 
X0=[-1 5];
%X0=[-3 3];



L=[L;X0];
while(k<10)
   r= grad_pas_const( X0,h,eps,e);
   L=[L;r];
   %X0=r;
  e=e*10;  % on fait tendre e vers l'infini en la multipliant par 10
  h=h*10^-1;   % en meme temps on doit changer le pas du gradient car on travaille avec l'alogrithme du gradient a pas constant
  k=k+1;

end
%L contient l'ensemble des solution qui tend vers la solution de problemme

x=-5:0.1:5;
y=-5:0.1:5;
[X Y]=meshgrid(x,y);
Z=fonct(X,Y);
subplot(1,2,1);
meshc(X,Y,Z);
axis([-5 5 -5 5,-100,1000]);
hold on;
L1=L(:,1);
L2=L(:,2);
plot3(x,1-x,fonct(x,1-x),'k');
%axis equal;
title('Recherche du minimum de la fct sous contrainte avec penalisation');

for i=1:length(L1)-1
  

    plot3(L1(i),L2(i),fonct(L1(i),L2(i)),'k*');
    getframe();
    pause(0.5);
    line([L1(i+1),L1(i)],[L2(i+1),L2(i)],[fonct(L1(i+1),L2(i+1)),fonct(L1(i),L2(i))],'color','r');
    pause(0.5);
    plot3(L1(i+1),L2(i+1),fonct(L1(i+1),L2(i+1)),'k*');
    pause(0.5);
    
end
subplot(1,2,2);
contourf(X,Y,Z);
hold on;
title('Les contours');

plot(x,1-x,'k');

for i=1:length(L1)-1
    
    plot(L1(i),L2(i),'k*');
    getframe();
    pause(0.5);
    line([L1(i+1),L1(i)],[L2(i+1),L2(i)],'color','r');
    pause(0.5);
    plot(L1(i+1),L2(i+1),'k*');
    pause(0.5);
    
end
