clear;
clc;
g = 9.81;
f = -480 * 0.3 * 0.03 * g;
E = 1.3 * 10^10;
I = 6.75 * 10^-7;
L = 2;
p = 50/0.3;

%tegner med beste n som vi ser er 1280
n = 1280;
h = 2/n;
m = zeros(1,n);
le = n*(1.7/2);
for i = le+1 : n
    m(i) = 1;
end
b = ((h ^ 4)/(E*I))*(f+(-p*g*m));
A = sparse(lagA(n));
y = A\b';
figure('Name', 'Oppgave 7');
x = (1:length(b))*h;
plot(x, y, 'r');
xlabel('Distansen');
ylabel('Bøyning');
legend('Estimat');