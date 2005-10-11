%
% File:   SIRscript.m  (for use with Matlab)
% Author: Warren Weckesser
%         Department of Mathematics
%         Colgate University
%
% Copyright (c) 2005 Warren Weckesser
%
%
% Set the parameters
%
r = 0.12;
g = 0.07;
%
% Set the initial conditions
%
S0 = 0.995;
I0 = 0.005;
R0 = 0.0;
%
% Put the initial conditions into the vector x0
%
x0 = [S0; I0; R0];
%
% tinfal is the stop time of ODE solver.
%
tfinal = 250.0;
%
% Call the ode solver
%
[t,x] = ode45(@SIRvectorfield,[0 tfinal],x0,[],r,g);
%
% Plot the solution (as functions of t)
%
clf;
plot(t,x(:,1),t,x(:,2),t,x(:,3));
tstr = sprintf('Solution of the SIR Model  (r=%.2f, gamma=%.2f)',r,g);
title(tstr);
xlabel('t');
legend('S','I','R');