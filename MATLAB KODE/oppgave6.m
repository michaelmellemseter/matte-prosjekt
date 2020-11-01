clear;
clc;
format long g;
%Kjører utregningene fra oppgave 5 om igjen med sinushaugen. Verdiene fra
%tabellen blir brukt til å løse oppgave 6f også. 
disp('Tabell med feilverdi for x=L for hver n')
disp('--------------------------------------------------------------------------------')
disp(['                         n', '            Estimat', '                  feil'])
disp('--------------------------------------------------------------------------------')
g = 9.81;
f = -480 * 0.3 * 0.03 * g;
E = 1.3 * 10^10;
I = 6.75 * 10^-7;
L = 2;
p = 100;
a = ((f-p*g*sin(pi)) / (24*E*I))*3*L^4 - ((p*g*L)/(E*I*pi))*(((L^3)/(pi^3)) * sin(pi)-(L^3)/6 + (L^3)/2 - (L^3)/pi^2);
figure('Name', 'Oppgave 6b'); %Dette er til plottingen av den nøyaktige feilen og feilestimatet
for k = 1 : 11
    n = 10*(2^k);
    h = L/n;
    b = ((h ^ 4)/(E*I))*(f+(-p*g*sin(pi*(1:n)*h/L)));
    A = sparse(lagA(n));
    c(k) = condest(A);
    y = A\b';
    feil(k) = abs(y(n) - a);
    disp([n y(n) feil(k)])
    
    x = (1:length(b))*h;
    noyaktigY = ((f-p*g*sin(pi)) / (24*E*I)).*x.^2 .* (x.^2 - 4*L.*x + 6*L^2) - ((p*g*L)/(E*I*pi))*(((L^3)/(pi^3)) * sin(pi.*x/L)-(x.^3)/6 + (L.*x.^2)/2 - (x.*L^2)/pi^2);
    plot(x, noyaktigY, 'g', x, y, 'r');
    hold on;
end
xlabel('Distansen');
ylabel('Bøyning');
legend('Noyaktig', 'Estimat');

nverdien = (10*(2.^(1:11)));
%Oppgave 6c
figure('Name', 'Oppgave 6c');
loglog(nverdien, feil(1:11));
xlabel('log(n)');
ylabel('log(feilestimat)');
legend('Feil for y_n');

%Oppgave 6d
figure('Name', 'Oppgave 6d');
loglog(nverdien, feil(1:11), nverdien, c(1:11)*eps, nverdien, ((L^2)./(2.^(1:11)).^2));
xlabel('log(n)');
ylabel('log(feilestimat)');
legend('Feil for y_n', 'condest(A)*eps', 'h²');