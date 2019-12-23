function[g] = f1(a,b,phi)
    ge = 9.7803267714;
    gp = 9.832186368;

    g = (a*ge*cos(phi)^22+b*gp*sin(phi)^22)/sqrt(a^2*cos(phi)^2+b^2*sin(phi)^2);
end