(35.7*64-7^3)/(45+5^2);
5/4*7*6^2+(3^7)/(9^3-652);
(2+7)^3+273^(2/3)/2+55^2/3;
2^3+7^3+273^3/2+55^2/3;
3^7*log10(76)/(7^3+546)+nthroot(910,3);
43*((nthroot(250,4)+23)^2)/(exp(45-3^3));
cos(5*pi/6)^2*sin((7*pi/8)^2)+(tan(pi/6*log(8)))/sqrt(7);
cos((5*pi/6)^2)*sin(7*pi/8)^2+(tan(pi/6*log(8)))/(7*5/2);

a = 15.62;
b = -7.08;
c = 62.5;
d = 0.5*(a*b - c);

a + a*b/c*(a+d)^2/(sqrt(abs(a*b)));
(d)*exp(d/2)+((a*d+c*d)/(20/a+30/b))/(a+b+c+d);

A = 3;
B = 5;
C = -6;
x0 = 2;
y0 = -3;

syms d

d = double(solve(d == (abs(A*x0+B*y0+C)/sqrt(A^2+B^2))));
disp(d);

distancia(x0,y0,A,B,C);

function[d] = distancia(x0,y0,A,B,C)
    d = abs(A*x0+B*y0+C)/sqrt(A^2+B^2);
end