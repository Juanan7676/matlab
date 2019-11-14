a = radians(147);
b = radians(95);
C = radians(88);

c = pbessel(a,b,C);
B = asin(sin(b)*sin(C)/sin(c));
A = asin(sin(a)*sin(C)/sin(c));

disp("c = "+degree(c));
disp("B = "+degree(B));
disp("A = "+degree(A));

a = radians(40);
b = radians(125);
c = radians(95);

C = acos((cos(c)-cos(a)*cos(b))/(sin(a)*sin(b)));
B = asin(sin(C)*sin(b)/sin(c));
A = asin(sin(C)*sin(a)/sin(c));
disp("-----------");
disp("C = "+degree(C));
disp("B = "+degree(B));
disp("A = "+degree(A));
