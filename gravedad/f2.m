function[g] = f2(a,b,phi)
    ge = 9.7803267714;
    gp = 9.832186368;
    e = sqrt((a^2-b^2)/a^2);
    k = b/a * gp/ge - 1;

    g = ge * (1+k*sin(phi)^2)/sqrt(1-e^2*sin(phi)^2);
end