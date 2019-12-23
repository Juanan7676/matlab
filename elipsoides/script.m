a = 6378137;
f = 1/298.257223563;

phi = -90:10:90;
Ms = [];
Ns = [];
Curvaturas = [];
cont = 1;
for i = phi
    sol = radios(a,f,i)
    Ms(cont) = sol(1);
    Ns(cont) = sol(2);
    Curvaturas(cont) = H(sol(1),sol(2));
    cont = cont + 1;
end
plot(phi,Ms);
plot(phi,Ns);
plot(cat(2,phi,phi),cat(2,Ms,Ns));
plot(phi,Curvaturas);