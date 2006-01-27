rtexstr = '$r$';
ptexstr = '$p$';
btexstr = '$b$';
peqtexstr = '$\frac{b}{r}$';
dpdttexstr = '$\frac{dp}{dt}$';
ttexstr = '$t$';

shft = 0.25;
dn = 0.18;

r = 0.3;
b = 0.75;
peq = b/r;

figure(2)
clf

p = linspace(0,4,101);
g = -r*p+b;
plot(p,g,'k','linewidth',2)
hold on
plot([0 4],[0 0],'k')
plot([0 0],[-0.4 1.2],'k')
% plot([peq peq],[0 0],'ko','linewidth',2)

% title('Logistic Growth Rate','fontsize',14)

h1 = text('string',ptexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[4-shft,-dn]);
h2 = text('string',btexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[-shft,b]);
%
%text(K,-0.1,'K','fontsize',12)
h3 = text('string',dpdttexstr,      ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[shft/2 1.1]);
h4 = text('string',peqtexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[peq-shft,-dn]);
axis([0 4 -0.4 1.2])
axis off
set(gcf,'PaperPosition',[0 0 3.5 2.5])
print('-deps','auton_example_rhsplot.eps')

figure(3)
clf

tmax = 10;
t = linspace(0,tmax,101);
p0 = peq/10;
z = exp(-r*t);
p = peq -(peq-p0)*z;
plot(t,p,'b','linewidth',2);
hold on
plot([0 tmax],[peq peq],'k--','linewidth',2)
plot([0 tmax],[0 0],'k')
plot([0 0],[-0.4 1.25*peq],'k')
% plot([0 0],[p0 p0],'bo','linewidth',2);
shft = 1.2;
h1 = text('string',ttexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[tmax,-dn]);
h2 = text('string',peqtexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[-shft,peq]);
h3 = text('string','$p(t)$',      ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[shft/2 1.25*peq]);
h4 = text('string','$p_0$',      ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[-shft p0]);
%xlabel('t')
%ylabel('p')

% title('Solution to the Logistic Equation','fontsize',14)

axis([0 tmax 0 1.25*peq])
axis off
set(gcf,'PaperPosition',[0 0 3.5 2.5])
print('-depsc','auton_example_solplot.eps')
