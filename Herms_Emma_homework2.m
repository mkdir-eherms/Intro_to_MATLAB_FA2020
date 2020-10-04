% 1. generate list of random integers 1 to 1000 
x = randi(1000,1,50)
for num = 1:length(x)
    if x(num) == 999
        disp('Ending script early')
        break
    elseif rem(x(num),2) == 0
        disp('the value is even')
    else
        disp('the value is odd')
    end
end
disp('End of script')
% want to verify if it works when a value in x is 999 do this
x(33) = 999
% now re-run for loop from above!

% if we don't want it to display ending script early and end of script when
% x includes a 999 we could run this slightly different for loop below
for num = 1:length(x)
    if x(num) == 999
        disp('Ending script early')
        break
    elseif rem(x(num),2) == 0
        disp('the value is even')
    elseif rem(x(num),2) == 1
        disp('the value is odd')
    end
    if num == (length(x))
        disp('End of Script')
    end
end

%2. generate a new random integer that's greater than 1000 until it finds a
%square number 
while 1
    int = randi([1001,10000]);
    if rem(sqrt(int), 1) == 0
        disp(int)
        break
    end
end

%3. script runs for 60 sec during this time print to screen the current
%time remaining 
tic
while toc<60
    pause(1)
    fprintf('Time remaining is %d seconds.\n',round(60-toc))
end

%4. generate a random 100,10 matrix. Return the 10 values of the row with
%the greatest mean value....

mymatrix = randi(100,100,10);
arrayofavgs = mean(mymatrix,2)
biggestrowavg = maxk(arrayofavgs,1)
rowindex = find(arrayofavgs == biggestrowavg)
mymatrix(rowindex,:)

%5. generate a random matrix 100by100by5 loop through to display 5 images

myimages = randi(255,[100,100,5]);
colormap gray
for image = 1:5
    currentimage = myimages(:,:,image);
    imagesc(currentimage)
    pause(2)
end
disp('End of Experiment')
close


