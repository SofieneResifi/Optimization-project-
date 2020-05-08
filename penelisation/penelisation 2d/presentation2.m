figure
x=-5:0.1:5;
y=-5:0.1:5;
[X,Y]=meshgrid(x,y);
Z = fonct(X,Y);
surf(Z);
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';


loops = 40;
F(loops) = struct('cdata',[],'colormap',[]);
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    F(j) = getframe;
end