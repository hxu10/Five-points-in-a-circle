% get five points randomly
function [p] = getpoints(N)
    p=zeros(N,2);
    sita=zeros(N);
    r=zeros(N);
    flag = 0;
while(flag == 0)   
    for i=1:N
        sita(i)=2*pi*rand();
        r(i)= rand();

    end
    for i=2:N
       for j=1:i-1
           if (sita(i)<=sita(j))
               tem = sita(i);
               sita(i) = sita(j);
               sita(j) = tem;
           end

       end
    end
    for i=1:N
        p(i,1)= r(i)*cos(sita(i));
        p(i,2)= r(i)*sin(sita(i));
    end
    
    [flag] = examine(p,N);
   

    
end
    
    
    


end













