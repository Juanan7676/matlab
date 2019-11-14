function[e] = terremoto(M)
    e0 = 10^(4.4);
    e = e0*exp(3/2*M);
end