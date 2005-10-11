//
// File:   SIRscript.sce  (for use with Scilab 3.1.1)
// Author: Warren Weckesser
//         Department of Mathematics
//         Colgate University
//
// Copyright (c) 2005 Warren Weckesser
//
//
// Make sure the SIR vector field function is defined.
//
getf('SIRvectorfield.sci');
//
// Set the parameters
//
r = 0.12;
g = 0.07;
//
// Set the initial conditions
//
S0 = 0.995;
I0 = 0.005;
R0 = 0.0;
//
// Put the initial conditions into the vector x0
//
x0 = [S0; I0; R0];
//
// Create the time samples for the output of the
// ODE solver.
//
tfinal = 250.0;
t = linspace(0,tfinal,201);
//
// Call the ode solver
//
x = ode(x0,0.0,t,list(SIRvectorfield,r,g));
//
// Plot the solution (as functions of t)
//
clf;
plot(t,x(1,:),t,x(2,:),t,x(3,:));
tstr = msprintf('Solution of the SIR Model  (r=%.2f, gamma=%.2f)',r,g);
xtitle(tstr,'t');
legend('S','I','R');
