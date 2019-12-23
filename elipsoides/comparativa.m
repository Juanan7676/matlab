a1 = 6378137;
f1 = 1/298.257223563;
a2 = 6378135;
f2 = 1/298.26;
phi = -90:10:90;

Ms = [];
Ns = [];
Curvaturas = [];
cont = 1;
for i = phi
    sol1 = radios(a1,f1,i);
    sol2 = radios(a2,f2,i);
    
    Ms(cont) = sol1(1) - sol2(1);
    Ns(cont) = sol1(2) - sol2(2);
    Curvaturas(cont) = H(sol1(1),sol1(2)) - H(sol2(1),sol2(2));
    cont = cont + 1;
end

plot(phi,Ms);
plot(phi,Ns);
plot(phi,Curvaturas);