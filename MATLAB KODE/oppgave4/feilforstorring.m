function ff = feilforstorring
%Her finner vi feilforstørringen
rf = relativ_foroverfeil; 
disp(rf);
rb = 2^-52;
disp(rb);
ff = rf/rb;
