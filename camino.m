function[sol] = camino(w,u,va,vc,o0,of,do)
    angs = o0:do:of;
    cont = 1;
    for o = angs
        h = w / cos(o*pi/180);
        l = h*sin(o*pi/180);
        sol(cont,1) = o;
        sol(cont,2) = h/va + (u-l)/vc;
        cont = cont + 1;
    end
end