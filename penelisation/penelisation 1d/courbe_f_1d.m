 x= -5:0.1:5;
t= -5:0.1:5;                                     %dans ce script on va faire varier e(on va tendren e vers l'infini) et voir son influence sur le graphe
L=[0.1:0.01:2];                                  %de la fonction penealisé puisque notre contrainte d'inegartite et x>0
Z =fonc_1d(x);                                   %on remarque que la partie pour x>0crestre inchangé parcontre la partie x<0
plot(x,Z,'b',x,0*x,'k',0*t,t,'k');               %change cela veut dire que lorsque e tend vers 0 la solution de la fonction
grid();                                          %penealisé tend vers la solution de notre problemme
hold on;
axis([-5 5 -5 5 ]);
length(L)
for i=1:length(L)
    e=L(i);
    z= fonct_pen_1d(x,e);                        
    k= plot(x,z,'r');
    getframe();
    pause(0.1);
    if(mod(i,50)~=0)
        delete(k);
    end    
    hold on;
end
z= fonct_pen_1d(x,e);
k=plot(x,z,'r');
hold off;


