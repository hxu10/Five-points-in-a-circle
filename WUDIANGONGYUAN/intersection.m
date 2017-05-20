% get five points randomly
function [x,y] = intersection(i,p,N)
    syms x;
    syms y;
    num1=mod(i,N)+1;
    num2=mod(i+1,N)+1;
    num3=mod(i+2,N)+1;
    num4=mod(i+3,N)+1;
    slope1=(p(num3,2)-p(num1,2))/(p(num3,1)-p(num1,1));
    slope2=(p(num4,2)-p(num2,2))/(p(num4,1)-p(num2,1));
    [x,y]= solve(y-p(num1,2)-(x-p(num1,1))*slope1,y-p(num2,2)-(x-p(num2,1))*slope2) ;
end
