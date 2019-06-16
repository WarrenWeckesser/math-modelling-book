import numpy as np
import matplotlib.pyplot as plt

kmax = 1.5
fmax = 0.5

s = 1
lambda_ = 1

k = np.linspace(0, kmax, 501)
f = s*k**(1/3)-lambda_*k
keq = (s/lambda_)**(3/2)

rtexstr = '$r$'
ktexstr = '$k$'
eqtexstr = r'$\left(\frac{s}{\lambda}\right)^{3/2}$'
dkdttexstr = r'$\frac{dk}{dt}$'
ttexstr = '$t$'

dn = 0.042

plt.plot(k, f, 'k', linewidth=2)
plt.plot([0, kmax], [0, 0], 'k')
plt.plot([0, 0], [-0.4, 1.2], 'k')
plt.plot([keq, keq], [0, 0], 'ko', linewidth=2)
plt.plot([0, 0], [0, 0], 'ko', linewidth=2)

plt.title('Solow Model Growth Rate', fontsize=14)

plt.text(kmax - 0.10, -dn, ktexstr, fontsize=14)
plt.text(keq, 0.06, eqtexstr, fontsize=16)
plt.text(0.04, fmax - 0.05, dkdttexstr, fontsize=16)
plt.text(0.015, -dn, '$0$', fontsize=14)

plt.axis([0, kmax, -0.25, fmax])

plt.axis('off')

"""
h1 = text('string',ktexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[kmax-0.10,-dn]);
h2 = text('string',eqtexstr,         ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[keq,.06]);
%
%text(K,-0.1,'K','fontsize',12)
h3 = text('string',dkdttexstr,      ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[0.04 fmax-.02]);
h4 = text('string','$0$',           ...
             'interpreter','latex', ...
             'fontsize',20,         ...
             'pos',[0.015,-dn]);
axis([0 kmax -0.25 fmax])
axis off

set(gcf,'PaperPosition',[0 0 4 3])
print('-deps','solow_rhsplot.eps')
"""

#plt.show()
plt.savefig('solow_rhsplot.eps')

"""
% figure(3)
% clf
% 
% tmax = 5;
% t = linspace(0,tmax,101);
% p0 = keq/10;
% z = exp(-r*t);
% p = (p0*K)./(p0+(K-p0)*z);
% plot(t,p,'b','linewidth',2);
% hold on
% plot([0 tmax],[K K],'k--','linewidth',1.5)
% plot([0 tmax],[0 0],'k')
% plot([0 0],[-0.4 1.25*K],'k')
% plot([0 0],[K K],'ko','linewidth',1.5);
% plot([0 0],[p0 p0],'bo','linewidth',1.5);
% shft = .33;
% h1 = text('string',ttexstr,         ...
%              'interpreter','latex', ...
%              'fontsize',20,         ...
%              'pos',[tmax,-dn]);
% h2 = text('string',eqtexstr,         ...
%              'interpreter','latex', ...
%              'fontsize',20,         ...
%              'pos',[-shft,K]);
% h3 = text('string','$k(t)$',      ...
%              'interpreter','latex', ...
%              'fontsize',20,         ...
%              'pos',[shft/2 1.25*K]);
% h4 = text('string','$k_0$',      ...
%              'interpreter','latex', ...
%              'fontsize',20,         ...
%              'pos',[-shft p0]);
% %xlabel('t')
% %ylabel('p')
% 
% title('Solution to the Logistic Equation','fontsize',14)
% 
% axis([0 tmax 0 1.25*K])
% axis off
% 
% %print('-deps','logistic_solution.eps')
"""
