function ff = foroverfeil()
%Her finner vi foroverfeilen 
x = vec; 
xa = numerisk_fjerdederivert; 
ff = norm(abs(x-xa), inf);