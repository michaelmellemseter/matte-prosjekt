function y = losAy(n,b)
    A = sparse(lagA(n));
    y = A\b;
end
