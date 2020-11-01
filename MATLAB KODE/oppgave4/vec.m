function e = vec
%Her finner vi f/EI(1,1,...,1)  
w=0.3;
d=0.03;
g=9.81;
f=-480*w*d*g;
E=1.3*10^10;
I=(w*d^3)/12;

enere = ones(1,10)';

e = (f/(E*I))*enere;