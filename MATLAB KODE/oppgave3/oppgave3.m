clear;
clc;
n=10;
b = ones(n, 1);
L = 2;
h = L/n;
g = 9.81;
E = 1.3 * 10^10;
I = 6.75 * 10^-7;
f = -480 * 0.3 * 0.03 * g;
mul = (h^4*f/(I * E));
for t=1:n
   b(t) = b(t) * mul;
end
y = losAy(n, b)