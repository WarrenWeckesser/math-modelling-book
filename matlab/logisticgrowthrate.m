r=1;
K=3;
p = linspace(0,4,5);
g = r*(1-p/K);
plot(p,g,'k','linewidth',2)
title('Per Capita Growth Rate')
ylabel('growth rate')
hold on
plot([0 4],[0 0],'k')
plot([0 0],[-0.4 1.2],'k')
text(3.9,-0.1,'p','fontsize',12)
text(K,-0.1,'K','fontsize',12)
text(-.1,r,'r','fontsize',12)
axis([0 4 -0.4 1.2])
axis off