clear;
e=1;
h=0.1;
eps=10^-4;
X0=-0.75;
k=0;
L=[];
L=[L;X0];
while (k<7)
    r= grad_pas_const_1d( X0,h,eps,e );    %determination de l'ensemble des point pour arriver au minimum
                                           
    L=[L;r];
    e=e*10;  %a chaque fois on fait tendre e vers 0
    h=h*0.1; %  et en meme temps doit reduire le pas du gradient pour qu'il converge 
    k=k+1;
end
L
x=-5:0.1:5;
z=fonc_1d(x);
plot(x,z);
axis([-5 5 -5 5]);
hold on;
L1=L(1:length(L));
L2=L(2:length(L));
%axis equal;
title('Recherche du minimum de la fct sous contrainte d inegalita x>0 avec penalisation en 1d');
grid on;
for i=1:length(L1)-1
  

    plot(L1(i),fonc_1d(L1(i)),'k*');
    getframe();
    pause(0.5);
    plot([L1(i),L1(i+1)],[fonc_1d(L1(i)),fonc_1d(L1(i+1))],'r');
    pause(0.5);
    plot(L1(i+1),fonc_1d(L1(i+1)),'k*');
    pause(0.5);
    
end
