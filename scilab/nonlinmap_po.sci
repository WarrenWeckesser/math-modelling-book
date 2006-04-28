//
//  nonlinmap_po.sci
//
//  An example to demonstrate an attracting periodic
//  orbit of a nonlinear map.
//

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
    theta = 2/3;
    x1 = (1.2-(x*x+y*y)/3)*[cos(theta)*x - sin(theta)*y; sin(theta)*x+cos(theta)*y];
endfunction

clf
ics = [.05 0; 2.25 0];
b = -0.25;
D = 2.25;
bnds = [-1.5 -1.5; 2.5 1.0];
plotiterations(ics,30,b,bnds)

// xs2eps(0,'nonlinearexample.eps')

