function[r] = minuto(A)
    if A > 0
        r = [floor(A) floor((A-floor(A))*60) floor(((A-floor(A))*60-floor((A-floor(A))*60))*60) ];
    else
        A = -A;
        r = [-floor(A) -floor((A-floor(A))*60) -floor(((A-floor(A))*60-floor((A-floor(A))*60))*60) ];
    end
end