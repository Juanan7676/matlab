function[ret] = radios(a,f,phi)
    sol = excentricidad(a,f);
    e = sol(2);
    ret(1) = (a*(1-e^2))/(1-e^2*sin(phi*pi/180)^2)^(1.5);
    ret(2) = a/(1-e^2*sin(phi*pi/180)^2)^(0.5);
end