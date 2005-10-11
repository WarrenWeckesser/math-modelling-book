%
% File:   SIRvectorfield.m (for use with Matlab)
% Author: Warren Weckesser
%         Department of Mathematics
%         Colgate University
%
% Copyright (c) 2005 Warren Weckesser
%
%
% This function computes the vector field of the
% SIR model of the spread of a disease in a population
% with a fixed size.  The parameters are r and g.
%
function xdot = SIRvectorfield(t,x,r,g)
  S = x(1);
  I = x(2);
  R = x(3);
  Sdot = -r*S*I;
  Idot = r*S*I - g*I;
  Rdot = g*I;
  xdot = [Sdot; Idot; Rdot];
end