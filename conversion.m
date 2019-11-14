function[H,d] = conversion(A,h,phi)
    d = degree(radians(90)-pbessel(radians(90-phi),radians(90-h),radians(180-A)));
    H = degree(asin(sin(radians(90-h))*sin(radians(180-A))/sin(radians(90)-radians(d))));
    disp(d);
    disp(H);
end