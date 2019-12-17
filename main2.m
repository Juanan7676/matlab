resultado = camino(4.5,14,3.5,5,0,60,10);

fprintf("Áng.\tTiempo (s)\n");
for i = 1:size(resultado,1)
    fprintf("%d\t\t%f\n",resultado(i,1),resultado(i,2));
end

plot(resultado(1:end,1),resultado(1:end,2));