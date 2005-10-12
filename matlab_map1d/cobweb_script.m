function cobweb_script(dosave)
    figure(1)
    clf
    r = 2.8;
    x = linspace(0,1,101);
    y = logisticmap(x,r);
    plot(x,y,'k','linewidth',2.5)
    hold on
    set(gca,'fontsize',12,'fontweight','bold')
    plot(x,x,'k--','linewidth',1.5)
    
    if (dosave)
%        pause
        print('-deps','logisticmap_example.eps')
    end
    hold on
    
    axis([0 1 0 0.8])


    set(gca,'XTick',[0 0.5 1])
    ylabelcoord = -0.04;
    
    x0 = 0.1;

    x1 = logisticmap(x0,r);
    plot([x0 x0],[0 x1],'k-','linewidth',2)
    text(x0,ylabelcoord,'x_0','fontsize',12,'fontweight','bold')
    plot([x0 x1],[x1 x1],'k-','linewidth',2)
    plot([x1 x1],[0 x1],'k--','linewidth',1.5)
    text(x1,ylabelcoord,'x_1','fontsize',12,'fontweight','bold')
    set(gcf,'paperposition',[0.25 2.5 4 3])
    if (dosave)
%        pause
        print('-deps','logisticmap_cobweb1.eps')
    end
    
    
    x2 = logisticmap(x1,r);
    plot([x1 x1],[x1 x2],'k-','linewidth',2)
    plot([x1 x2],[x2 x2],'k-','linewidth',2)
    plot([x2 x2],[0 x2],'k--','linewidth',1.5)
    text(x2,ylabelcoord,'x_2','fontsize',12,'fontweight','bold')
    
    if (dosave)
%        pause
        print('-deps','logisticmap_cobweb2.eps')
    end

    x3 = logisticmap(x2,r);
    plot([x2 x2],[x2 x3],'k-','linewidth',2)
    plot([x2 x3],[x3 x3],'k-','linewidth',2)
    plot([x3 x3],[0 x3],'k--','linewidth',1.5)
    text(x3,ylabelcoord,'x_3','fontsize',12,'fontweight','bold')
    
    if (dosave)
%         pause
        print('-deps','logisticmap_cobweb3.eps')
    end

    x4 = logisticmap(x3,r);
    plot([x3 x3],[x3 x4],'k-','linewidth',2)
    plot([x3 x4],[x4 x4],'k-','linewidth',2)
    plot([x4 x4],[0 x4],'k--','linewidth',1.5)
    text(x4,ylabelcoord,'x_4','fontsize',12,'fontweight','bold')
    
    if (dosave)
%         pause
        print('-deps','logisticmap_cobweb4.eps')
    end

    figure(2)
    clf
    x0 = 0.1;
    N = 10;
    x = zeros(8,1);
    x(1) = x0;
    for k = 1:N-1
        x(k+1) = logisticmap(x(k),r);
    end
    plot(0:N-1,x,'k.','linewidth',3)
    hold on
    plot(0:N-1,x,'ko','linewidth',2)
    plot(0:N-1,x,'k*','linewidth',2)

    axis([0 N-1 0 1])
    xlabel('n','fontsize',12,'fontweight','bold')
    ylabel('x_n','fontsize',12,'fontweight','bold')
    grid on
    set(gca,'fontsize',12,'fontweight','bold')
    x
    set(gca,'ytick',[0 .2 .4 .6 .8 1]);
    if (dosave)
        set(gcf,'paperposition',[0.25 2.5 4 3])
        print('-deps','logisticmap_timeseries.eps')
    end
    
    figure(3)
    clf
    x = linspace(0,1,101);
    y = logisticmap(x,r);
    plot(x,y,'k','linewidth',2.5)
    hold on
    plot(x,x,'k--','linewidth',1.5)
    set(gca,'fontsize',12,'fontweight','bold')
    axis([0 1 0 1])

    x0 = 0.1;
    x1 = logisticmap(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:9
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = logisticmap(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    
    if (dosave)
        set(gcf,'paperposition',[0.25 2.5 4 3])
        print('-deps','logisticmap_cobwebfinal.eps')
    end
    
end
    
function y = logisticmap(x,r)
    y = r*x.*(1-x);
end