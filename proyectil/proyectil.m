function[sol] = proyectil(v0,o0,of,do,g)
    cont = 1;
    for o = o0:do:of
        
        vy = v0*sin(o*pi/180);
        vx = v0*cos(o*pi/180);
        t = -2*vy/g;
        x = vx*t;
        sol(cont,1) = o;
        sol(cont,2) = x;
        cont  = cont + 1;
    end
end