function nf = numerisk_fjerdederivert
%Her beregnes den numeriske fjerdederiverte
%KONSTANTER
E=1.3*10^10; 
L=2;
w=0.3;
d=0.03; 
g=9.81;
I=(w*d^3)/12;
f=-480*w*d*g;
h=L/10;

nf = (1/h^4)*lagA(10)*y_e;