% get five points randomly
function [p] = getpoints(N)
    p=[N,2];
    for i=1:N
        sita[i]=2*pi*rand();
        r[i]=rand();

    end
    [sita[1],sita[2],sita[3],sita[4],sita[5]]= arrange(sita1,sita2,sita3,sita4,sita5)
    for i=1:5
        p[i,1]= r[i]*cos(sita[i]);
        p[i,2]= r[i]*sin(sita[i]);
    end
    p


end













fucntion [sita] = arrange()

    for i=2:5
       for j=1:i-1
           if (sita[i]>sita[j]) then
               tem = sita[i];
               sita[i] = sita[j];
               sita[j] = tem;
           end

       end
    end

end
