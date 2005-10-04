function popdataplot


    figure(1)
    clf
    x0 = 100;
    N = 10;
    x = zeros(N,1);
    x(1) = x0;
    for k = 1:N-1
        x(k+1) = 1.15*x(k);
    end
    plot(0:N-1,x,'k.','linewidth',3)
    hold on
    plot(0:N-1,x,'ko','linewidth',2)
    plot(0:N-1,x,'k*','linewidth',2)

    axis([0 N-1 0 400])
    xlabel('n','fontsize',12,'fontweight','bold')
    ylabel('p_n','fontsize',12,'fontweight','bold')
    grid on
    set(gca,'fontsize',12,'fontweight','bold')
    x

    set(gcf,'paperposition',[0.25 2.5 4 3])
    print('-depsc','popdataplot.eps')
    
end