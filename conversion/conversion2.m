function[coords] = conversion2(var1,var2,eps,modo)
    v1 = (var1(1)+var1(2)/60+var1(3)/3600)*pi/180;
    v2 = (var2(1)+var2(2)/60+var2(3)/3600)*pi/180;
    e = (eps(1)+eps(2)/60+eps(3)/3600)*pi/180;
    if modo=="E"
       if v1 <= pi/2
          PX = acos(cos(e)*cos(pi/2-v2)+sin(e)*sin(pi/2-v2)*cos(pi/2 - v1));
          
          d = 90 - PX*180/pi;
          
          a = acos((cos(pi/2-v2)*sin(e)-sin(pi/2-v2)*cos(e)*cos(pi/2 - v1))/sin(PX))*180/pi;
          
          coords = [minuto(a - 90) minuto(d)];
       elseif v1 <= 3*pi/2
          PX = acos(cos(e)*cos(pi/2-v2)+sin(e)*sin(pi/2-v2)*cos(v1 - pi/2));
          
          d = 90 - PX*180/pi;
          
          a = acos((cos(pi/2-v2)*sin(e)-sin(pi/2-v2)*cos(e)*cos(v1 - pi/2))/sin(PX))*180/pi;
          
          coords = [minuto(270 - a) minuto(d)];
       else
          PX = acos(cos(e)*cos(pi/2-v2)+sin(e)*sin(pi/2-v2)*cos(450*pi/180 - v1));
          d = 90 - PX*180/pi;
          
          a = acos((cos(pi/2-v2)*sin(e)-sin(pi/2-v2)*cos(e)*cos(450*pi/180 - v1))/sin(PX))*180/pi;
          
          coords = [minuto(a + 270) minuto(d)];
       end
    elseif modo=="A"
        if v1 <= pi/2
          PX = acos(cos(e)*cos(pi/2-v2)+sin(e)*sin(pi/2-v2)*cos(pi/2 + v1));
          
          d = 90 - PX*180/pi;
          
          l = acos((cos(pi/2-v2)*sin(e)-sin(pi/2-v2)*cos(e)*cos(pi/2 + v1))/sin(PX))*180/pi;
          
          coords = [minuto(90 - l) minuto(d)];
       elseif v1 <= 3*pi/2
          PX = acos(cos(e)*cos(pi/2-v2)+sin(e)*sin(pi/2-v2)*cos(3*pi/2 - v1));
          
          d = 90 - PX*180/pi;
          
          l = acos((cos(pi/2-v2)*sin(e)-sin(pi/2-v2)*cos(e)*cos(3*pi/2 - v1))/sin(PX))*180/pi;
          
          coords = [minuto(l + 90) minuto(d)];
       else
          PX = acos(cos(e)*cos(pi/2-v2)+sin(e)*sin(pi/2-v2)*cos(v1 - 3*pi/2));
          d = 90 - PX*180/pi;
          
          l = acos((cos(pi/2-v2)*sin(e)-sin(pi/2-v2)*cos(e)*cos(v1 - 3*pi/2))/sin(PX))*180/pi;
          coords = [minuto(450 - l) minuto(d)];
       end
    end
end