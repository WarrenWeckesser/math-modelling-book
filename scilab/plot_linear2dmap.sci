//
// plot_linear2dmap.sci
//
// Plots n iterations of the linear map with matrix A.
//
function x = plot_linear2dmap(x0,A,n)
    x = x0;
    for i = 1:n,
        plot(x(1),x(2),'diamondred')
        x = A*x;
    end
endfunction

        
