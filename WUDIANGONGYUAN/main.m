%% this is the main function, input the origin data, output the result.
function [output] = main(N, draw, manual, origin)

if (manual == 0)
    [origin]=getpoints(N);
else
    [flag] = examine(origin,N);
    if(flag == 0) 
        display('I am angry! you should put your points in counterclockwise order!')
        exit;
    end
end
origin
sec = zeros(N,2);
heart = zeros(N,2);
final = zeros(N,2);
r = zeros(N,1);
judge = zeros(N-3,1);
for i=1:N
    [sec(i,1),sec(i,2)]= intersection(i,origin,N);
end

sec


for i=1:N
    j = mod(i+N-4,N)+1;
    k = mod(i+N-3,N)+1;
    [heart(i,1),heart(i,2),r(i)]= circumheart(sec(j,:),sec(k,:),origin(i,:));
end

heart

for i=1:N
    [final(i,1),final(i,2)]=finalpoints(i,heart,r,sec,N);
end

final

[c_x,c_y,r_big] = circumheart(final(1,:),final(2,:),final(3,:));
r_big= vpa(r_big);

correct = 1;
for i=4:N
    judge(i-3) =((final(i,1)-c_x)^2+(final(i,2)-c_y)^2)^0.5;
    compare = judge(i-3)-r_big;
    compare = double(compare);
    if(compare<0.000001)
        correct = correct* 1;
    else 
        correct = correct* 0;
    end
end
if(draw==1) 
   display('we have draw the picture')
   [draw]= drawpicture(origin,heart,final,r,c_x,c_y,r_big,N); 
end


if(correct == 1)
    display('Excited! we have proved this theroem!')
    display('the coordinate of the center point of circle is')
    disp(vpa(c_x))
    disp(vpa(c_y))
    display('the radius of the circle is')
    disp(r_big)
    output = 1;
else
    display('I am angry! You are after all too young!')
    output = 0;
end
