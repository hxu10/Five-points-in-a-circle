% To examine if these points can form a good star
function [result] = examine(original,N)

    sita = zeros(N,1);
    for i=1:N
        j=mod(i,N)+1;
        dx = original(j,1)-original(i,1);
        dy = original(j,2)-original(i,2);
        dl = (dx*dx+dy*dy)^0.5;
        if(dx>=0 && dy>=0)
            sita(i) = atan(dy/dx)*180/pi; 
        elseif(dx>=0 && dy<0)
            sita(i) = atan(dy/dx)*180/pi+360;
        else
            sita(i) = atan(dy/dx)*180/pi+180;
        end
    end
    
    minangle = min(sita);
    result = 1;
    for i=1:N
        j=mod(i,N)+1;
        if(sita(j)>sita(i))
            result = result*1;
        elseif(sita(j)<sita(i) && sita(j)==minangle)
            result = result*1;
        else
            result = 0;
        end
    
    end


   
end
