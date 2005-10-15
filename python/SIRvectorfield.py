def SIRvectorfield(x,t,r,g):
    S = x[0]
    I = x[1]
    R = x[2]
    Sdot = -r*S*I
    Idot = r*S*I - g*I
    Rdot = g*I
    return [Sdot,Idot,Rdot]

