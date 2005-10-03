rtexstr = '$r$';
ptexstr = '$p$';
Ktexstr = '$K$';
dpdttexstr = '$\frac{dp}{dt}$';

shft = 0.18;
dn = 0.08;

figure(1)
clf
r=1;
K=3;
p = linspace(0,4,5);
g = r*(1-p/K);
plot(p,g,'k','linewidth',2)
title('Logistic Per Capita Growth Rate','fontsize',14)
%ylabel('growth rate')
hold on
plot([0 4],[0 0],'k')
plot([0 0],[-0.4 1.2],'k')
plot([K K],[0 0],'ko','linewidth',2)
plot([0 0],[r r],'ko','linewidth',2)
h1 = text('string',ptexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[4-shft,-dn]);
h2 = text('string',Ktexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[K-shft,-dn]);
h3 = text('string',rtexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[-shft,r]);
%text(3.9,-0.1,'p','fontsize',12)
%text(K,-0.1,'K','fontsize',12)
%text(-.1,r,'r','fontsize',12)
axis([0 4 -0.4 1.2])
axis off


print('-deps','logistic_percapita_growthrate.eps');

figure(2)
clf

p = linspace(0,4,101);
g = r*p.*(1-p/K);
plot(p,g,'k','linewidth',2)
hold on
plot([0 4],[0 0],'k')
plot([0 0],[-0.4 1.2],'k')
plot([K K],[0 0],'ko','linewidth',2)

title('Logistic Growth Rate','fontsize',14)

h1 = text('string',ptexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[4-shft,-dn]);
h2 = text('string',Ktexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[K-shft,-dn]);
%
%text(K,-0.1,'K','fontsize',12)
h3 = text('string',dpdttexstr,      ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[shft/2 1.1]);
axis([0 4 -0.4 1.2])
axis off

print('-deps','logistic_growthrate.eps')
