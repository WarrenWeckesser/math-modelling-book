function popstats(ntrials)
clf
rand('state',0)
maxpop = 40;
pfinal = zeros(maxpop,1);

m = 1;
for k = 1:ntrials,
    p = pop(2);
    finalp = p(end);
    if (finalp < maxpop)
        pfinal(p(end)+1) = pfinal(p(end)+1)+1;
    end
    if (mod(k,m) == 0)
        bar(0:maxpop-1,100*pfinal/k,.6)
        set(gca,'XLim',[-1 maxpop])
        tstr = sprintf('Results from %d trials.',k);
        title(tstr)
        grid on
        drawnow
        m = ceil(1.1*m);
    end
end
clf
bar(0:maxpop-1,100*pfinal/ntrials,.6)
set(gca,'XLim',[-1 maxpop])
set(gca,'fontweight','bold')
xlabel('Final Population')
ylabel('Percent Occurrences')
tstr = sprintf('Results from %d trials.',ntrials);
title(tstr)
grid on
set(gcf,'PaperPosition',[0 0 4 3])
print('-depsc','StochDist.eps')
