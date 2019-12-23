function[sol] = excentricidad(a,f)
    b = a-f*a;
    sol(1) = sqrt(a^2-b^2);
    sol(2) = sol(1)/a;
    sol(3) = sol(1)/b;
end