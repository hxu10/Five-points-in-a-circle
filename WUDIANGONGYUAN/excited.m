%% the author is Hao Xu, with ID in bilibili 10783631

%%%%%%%%%%%%%%%%%%%%%%%%%%  input area %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N = 6 ;

manual = 0 ;
%if manual is 1, then you need to input N points, else we will generate five points randomly.

draw = 1 ;
%if draw is 1, we will draw the picture for you

Round = 1 ; 
% the experiment times




%%%%%%%%%%%%%%%%%%%%%%%%%%%  Work zone %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

origin = zeros(5,2);


if(N<5)
    display('Naive! N must be no less than 5!')
    exit
end
if(manual == 0)
    for i=1:5
        origin(i,1)=0;
        origin(i,2)=0;
    end
else
    display('Please input the five points of stars')
    origin = importdata('input.txt');
end

total = 0;
for i=1:Round
    [result] = main(N, draw, manual, origin);
    total = total + result;
end

display('Experiment times')
disp(Round)
display('Succeed times')
disp(total)











