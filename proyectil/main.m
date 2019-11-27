resultado = proyectil(750,5,85,5,-9.8);

fprintf("Áng.\tDistancia (m)\n");
for i = 1:size(resultado,1)
    fprintf("%d\t\t%f\n",resultado(i,1),resultado(i,2));
end

plot(resultado(1:end,1),resultado(1:end,2));