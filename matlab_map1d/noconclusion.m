function noconclusion
    figure(1)
    clf
    r = 0;
    
    x = linspace(0,1,101);
    y = logisticmap(x,r);
    plot(x,y,'k','linewidth',2.5)
    hold on
    plot(x,x,'k--','linewidth',1.5)
    set(gca,'fontsize',12,'fontweight','bold')
    axis([0 1 0 1])

    plot(.5,.5,'ko','linewidth',2)
    
    x0 = 0.65;
    x1 = logisticmap(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:9
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = logisticmap(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    
    x0 = 0.1;
    x1 = logisticmap(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:9
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = logisticmap(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    xlabel('x_n','fontsize',12,'fontweight','bold')
    ylabel('x_{n+1}','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
    set(gca,'XTick',[0 .5 1])
    grid on
    
    figure(2)
    clf
    r = 0;
    
    x = linspace(-1,1,101);
    y = map2(x,r);
    plot(x,y,'k','linewidth',2.5)
    hold on
    plot(x,x,'k--','linewidth',1.5)
    set(gca,'fontsize',12,'fontweight','bold')
    axis([-0.75 0.75 -0.75 0.75])

    plot(0,0,'ko','linewidth',2)
    
    x0 = 0.3;
    x1 = map2(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:10
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = map2(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    
    x0 = -0.3;
    x1 = map2(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:10
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = map2(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    xlabel('x_n','fontsize',12,'fontweight','bold')
    ylabel('x_{n+1}','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
%    set(gca,'XTick',[0 .5 1])
    grid on
    
    figure(3)
    clf
    r = 0;
    
    x = linspace(-1,1,101);
    y = map3(x,r);
    plot(x,y,'k','linewidth',2.5)
    hold on
    plot(x,x,'k--','linewidth',1.5)
    set(gca,'fontsize',12,'fontweight','bold')
    axis([-1 1 -0.5 0.5])

    plot(0,0,'ko','linewidth',2)
    
    x0 = 0.75;
    x1 = map3(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:10
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = map3(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    
    x0 = -0.75;
    x1 = map3(x0,r);
    plot([x0 x0],[x0 x1],'k-','linewidth',2)
    for k = 2:10
        plot([x0 x1],[x1 x1],'k-','linewidth',2)
        x0 = x1;
        x1 = map3(x0,r);
        plot([x0 x0],[x0 x1],'k-','linewidth',2)
    end
    xlabel('x_n','fontsize',12,'fontweight','bold')
    ylabel('x_{n+1}','fontsize',12,'fontweight','bold')
    set(gca,'fontsize',12,'fontweight','bold')
%    set(gca,'XTick',[0 .5 1])
    grid on

end
    
function y = logisticmap(x,r)
    y = (x+0.5).^2-(x+0.5)+1-0.5;
end

function y = map2(x,r)
    y = 2*x.^3+x;
end

function y = map3(x,r)
    y = tanh(2*x)/2;
end