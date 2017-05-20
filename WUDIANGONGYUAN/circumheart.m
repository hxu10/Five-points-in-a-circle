% get the circumheart with the given three points
function [x,y,r] = circumheart(p1,p2,p3)
    syms x;
    syms y;
    x1 = (p1(1)+p2(1))/2;
    y1 = (p1(2)+p2(2))/2;
    x2 = (p1(1)+p3(1))/2;
    y2 = (p1(2)+p3(2))/2;
    k1 = (p1(1)-p2(1))/(p2(2)-p1(2));
    k2 = (p1(1)-p3(1))/(p3(2)-p1(2));
    if(k1>100000) 
        [x,y]=solve(x-x1,y-y2-k2*(x-x2));
    elseif(k2>100000)
        [x,y]=solve(y-y1-k1*(x-x1),x-x2);    
    else
        [x,y]=solve(y-y1-k1*(x-x1),y-y2-k2*(x-x2));    
    end
    r = ((p1(1)-x)^2+(p1(2)-y)^2)^0.5;
    
end
