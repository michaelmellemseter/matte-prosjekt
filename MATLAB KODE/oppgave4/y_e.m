function ye = y_e 
%Her lages vektoren y_e som brukes for å finne den numeriske fjerdederiverte.
%KONSTANTER
E=1.3*10^10; 
L=2;
w=0.3;
d=0.03; 
g=9.81;
I=(w*d^3)/12;
f=-480*w*d*g;
h=L/10;

y_funksjon = @(x) ((f/(24*E*I))*(x^2)*((x^2)-(4*L*x)+(6*(L^2))));

teller = 1;
for i = 0.2:0.2:2
    vector(teller) = y_funksjon(i);
    teller = teller+1;
end

ye=vector';