clear;
clc;
format long g;
g = 9.81;
f = -480 * 0.3 * 0.03 * g;
E = 1.3 * 10^10;
I = 6.75 * 10^-7;
L = 2;
x = 2;
a = (f/(24*E*I))*(x^2)*(x^2 - 4*L*x +6*L^2);
disp(['                         n', '            Feil', '                    Kondisjonstall'])
disp('--------------------------------------------------------------------------------')
for z = 1:11
   n = 10 * 2^z;
   h = L/n;
   b = ones(n, 1);
   mul = h^4*f/(I * E);
   for t=1:n
       b(t) = b(t) * mul;
   end
   A = sparse(lagA(n));
   c = condest(A);
   estimat = A\b;
   disp([n, estimat(n) - a, c])
end
