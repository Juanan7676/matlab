angulos = 0:1:90;

g1 = [];
g2 = [];
g3 = [];


b = 6356752.3142;
f = 1/298.257223563;
a = b/(1-f);

cont = 1;
for phi = angulos
    g1(cont) = f1(a,b,phi*pi/180);
    g2(cont) = f2(a,b,phi*pi/180);
    g3(cont) = f3(phi*pi/180)/100000;
    cont = cont + 1;
end

plot(angulos,g1, angulos,g2, angulos,g3);

plot(angulos,g1-g2);
plot(angulos,g1-g3);