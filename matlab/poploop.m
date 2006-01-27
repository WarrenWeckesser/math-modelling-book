function poploop(n,rseed)
% Use n=5, rseed=43 for the figure in the notes.
rand('state',rseed)
figure(1)
clf
hold on
clr = {'r-o','g--*','b-.v','k-d','m--s'};
for k = 1:n,
    p = pop(2);
    j = mod(k-1,length(clr))+1;
    cstr = clr{j};
    plot(0:length(p)-1,p,cstr,'linewidth',1);
end
ax = axis;
axis([ax(1) ax(2) 0 ax(4)])
set(gca,'XTick',[0 1 2 3 4 5])
set(gca,'fontweight','bold')
xlabel('Year')
ylabel('Population')
set(gcf,'PaperPosition',[0 0 4 3])
print('-depsc','StochModel.eps')
end
