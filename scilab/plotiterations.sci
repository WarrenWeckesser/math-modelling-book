
function plotiterations(ics,n,b,bnds)
    for k = 1:size(ics,1),
        x = ics(k,1);
        y = ics(k,2);
        plot(x,y,'r-d');
        for j = 1:n,
            x1 = nonlinearexample([x;y],b);
            plot([x1(1) x],[x1(2) y],'r-d');
            if (x1(1) < bnds(1,1) | x1(2) < bnds(1,2) | x1(1) > bnds(2,1) | x1(2) > bnds(2,2)) then
                break
            end            
            x = x1(1);
            y = x1(2);
        end
    end
    set(gca(),'data_bounds',bnds);
endfunction

function x1 = nonlinearexample(x0,b)
    x = x0(1);
    y = x0(2);
    x1 = [x*(1-x)+b*y;   y/2+x];
endfunction

clf
ics = [.4 0; .78 0; .79 0; 1 0];
b = -0.25;
eq0 = [0 0];
eq1 = [2*b 4*b];
bnds = [-1 -1.5; 1 1];
plotiterations(ics,24,b,bnds)
plot(eq0(1),eq0(2),'b-o')
plot(eq1(1),eq1(2),'b-o')
xs2eps(0,'nonlinearexample.eps')

