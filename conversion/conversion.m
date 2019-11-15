function[coords] = conversion(var1,var2,lat,modo)
    v1 = (var1(1)+var1(2)/60+var1(3)/3600)*pi/180;
    v2 = (var2(1)+var2(2)/60+var2(3)/3600)*pi/180;
    l = (lat(1)+lat(2)/60+lat(3)/3600)*pi/180;
    if modo=="H"
       if v1 <= pi
          PX = acos(cos(pi/2-l)*cos(pi/2-v2)+sin(pi/2-l)*sin(pi/2-v2)*cos(pi-v1));
          
          d = 90 - PX*180/pi;
          
          H = acos((cos(pi/2-v2)*sin(pi/2-l)-sin(pi/2-v2)*cos(pi/2-l)*cos(pi-v1))/sin(PX))*180/pi;
          
          coords = [minuto(H) minuto(d)];
       else
          PX = acos(cos(pi/2-l)*cos(pi/2-v2)+sin(pi/2-l)*sin(pi/2-v2)*cos(v1-pi));
          d = 90 - PX*180/pi;
          
          H = acos((cos(pi/2-v2)*sin(pi/2-l)-sin(pi/2-v2)*cos(pi/2-l)*cos(v1-pi))/sin(PX))*180/pi;
          
          coords = [minuto(360-H) minuto(d)];
       end
    elseif modo=="E"
        if v1 < pi
          XZ = acos(cos(pi/2-l)*cos(pi/2-v2)+sin(pi/2-l)*sin(pi/2-v2)*cos(v1));
          h = 90 - XZ*180/pi;
          
          A = acos((cos(pi/2-v2)*sin(pi/2-l)-sin(pi/2-v2)*cos(pi/2-l)*cos(v1))/sin(XZ))*180/pi;
          
          coords = [minuto(180-A) minuto(h)];
        else
          XZ = acos(cos(pi/2-l)*cos(pi/2-v2)+sin(pi/2-l)*sin(pi/2-v2)*cos(2*pi-v1));
          h = 90 - XZ*180/pi;
       
          A = acos((cos(pi/2-v2)*sin(pi/2-l)-sin(pi/2-v2)*cos(pi/2-l)*cos(2*pi-v1))/sin(XZ))*180/pi;
          
          coords = [minuto(A+180) minuto(h)];
       end
    end
        
end