function ff = feilforstorring
%Her finner vi feilforst�rringen
rf = relativ_foroverfeil; 
disp(rf);
rb = 2^-52;
disp(rb);
ff = rf/rb;
