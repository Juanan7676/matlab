function[r] = minuto(A)
    r = [floor(A) floor((A-floor(A))*60) floor(((A-floor(A))*60-floor((A-floor(A))*60))*60) ];
end