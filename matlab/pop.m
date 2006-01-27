%
% Generates the time series of a population that obeys the
% following simple rules. In each generate, three things can
% happen to an individual.  There is a 10% chance that the
% individual dies, a 50% chance that the individual produces
% an offspring, and a 40% chance that nothing happens.
%
function p = pop(p0)
n = 6;
p = zeros(n,1);
p(1)=p0;
for k=2:n,
    delta = 0;
    for j=1:p(k-1),
        z = rand;
        if z < 0.10
            delta = delta-1;
        elseif z > .5
            delta = delta+1;
        end
    end
    p(k) = p(k-1) + delta;
end
