% get five points randomly
function [x_i,y_i] = intersection(i,heart,r,sec,N)
syms x;
syms y;
j = mod(i,N)+1;
k = mod(i+N-3,N)+1;
r1 = r(i);
r2 = r(j);
x1 = heart(i,1);
y1 = heart(i,2);
x2 = heart(j,1);
y2 = heart(j,2);

[x0,y0] = solve((x-x1)^2+(y-y1)^2-r1^2,(x-x2)^2+(y-y2)^2-r2^2);
for i_solve=1:2
    compare1=abs(x0(i_solve)-sec(k,1));
    compare2=abs(y0(i_solve)-sec(k,2));
    compare1 = double(compare1);
    compare2 = double(compare2);
   if(compare1<0.000001 && compare2<0.000001) 
      correct = 3 - i_solve;
   end
end
if (correct == 0)
    display('Naive! there is something wrong with the intersection of two circle! ')
else
    x_i = x0(correct);
    y_i = y0(correct);
end


end
