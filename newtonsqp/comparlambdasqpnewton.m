%Figure pour faire la comparaison entre SQP et Newton pour differents
%valeurs de lambda (10,50,100)
%insuffisance de SQP pour des grands valeurs de lambda (au dela de 100)
%Nombre d'iterations qui augmente quand lambda augemnte

close
x=-10:0.1:10;
y=-10:0.1:10;
[X Y]=meshgrid(x,y);
Z=fct(X,Y);

%Pour lambda=10
%Newton:

subplot(2,3,1);
contour(X,Y,Z,50);
title('Min avec Newton(lambda=10) => 7 itérations');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
t=Newton(-5,-5,10);
t1=t(:,1);
t2=t(:,2);
for i=1:length(t1)-1
    plot(t1(i),t2(i),'k*');
    pause(0.2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(0.2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(0.2);
end

%SQP:
subplot(2,3,4);
contour(X,Y,Z,50);
title('Min avec SQP(lambda=10) => 10 itérations');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
t=SQP(-5,-5,10);
t1=t(:,1);
t2=t(:,2);
for i=1:length(t1)-1
    pause(0.2);
    plot(t1(i),t2(i),'k*');
    pause(0.2);
    A=hessianfct(t1(i),t2(i));
    b=gradientfct(t1(i),t2(i));
    zq=formequad(A,b,X,Y,[t1(i+1);t2(i+1)]);
    [~,hq]= contour(X,Y,zq,[0 0],'m');
    pause(0.2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(0.2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(0.2);
    delete(hq);
end

%Pour lambda=50
%Newton:

subplot(2,3,2);
contour(X,Y,Z,50);
title('Min avec Newton(lambda=50) => 15 itérations');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
t=Newton(-5,-5,50);
t1=t(:,1);
t2=t(:,2);
for i=1:length(t1)-1
    plot(t1(i),t2(i),'k*');
    pause(0.2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(0.2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(0.2);
end

%SQP:

subplot(2,3,5);
contour(X,Y,Z,50);
title('Min avec SQP(lambda=50) => 9 itérations');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
t=SQP(-5,-5,50);
t1=t(:,1);
t2=t(:,2);
for i=1:length(t1)-1
    pause(0.2);
    plot(t1(i),t2(i),'k*');
    pause(0.2);
    A=hessianfct(t1(i),t2(i));
    b=gradientfct(t1(i),t2(i));
    zq=formequad(A,b,X,Y,[t1(i+1);t2(i+1)]);
    [~,hq]= contour(X,Y,zq,[0 0],'m');
    pause(0.2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(0.2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(0.2);
    delete(hq);
end

%Pour lambda=100
%Newton:

subplot(2,3,3);
contour(X,Y,Z,50);
title('Min avec Newton(lambda=100) => 22 itérations');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
t=Newton(-5,-5,100);
t1=t(:,1);
t2=t(:,2);
for i=1:length(t1)-1
    plot(t1(i),t2(i),'k*');
    pause(0.2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(0.2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(0.2);
end

%SQP:

subplot(2,3,6);
contour(X,Y,Z,100);
title('Min avec SQP(lambda=100) => 2 itérations');
hold on; 
theta = linspace(0,2*pi,100);
xc = 4*cos(theta);
yc = 4*sin(theta);
axis([-10 10 -10 10 ])
plot(xc,yc,'k');
t=SQP(-5,-5,100);
t1=t(:,1);
t2=t(:,2);
for i=1:length(t1)-1
    pause(0.2);
    plot(t1(i),t2(i),'k*');
    pause(0.2);
    A=hessianfct(t1(i),t2(i));
    b=gradientfct(t1(i),t2(i));
    zq=formequad(A,b,X,Y,[t1(i+1);t2(i+1)]);
    [~,hq]= contour(X,Y,zq,[0 0],'m');
    pause(0.2);
    line([t1(i+1),t1(i)],[t2(i+1),t2(i)],'color','r');
    pause(0.2);
    plot(t1(i+1),t2(i+1),'k*');
    pause(0.2);
    delete(hq);
end
