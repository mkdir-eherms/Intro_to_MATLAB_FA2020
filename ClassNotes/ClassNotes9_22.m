% here we will see hi 50 times becuase for each of the 10 for loops it also
% goes through 5 of the jj for loop
for ii = 1:10,
    for jj = 1:5
        disp('hi');
    end
end

% what is the difference between for and while loops?
% while loop is conditional on something happening while the for loop is
% based on an incrementing for a certain number

ii = 1;
while ii <1000
    ii = ii + ii^2
end
% this will stop when the value of ii is greater than 1000

% exercise 1 write a script that keeps incremeting x by 5 until x is
% greater than 1000 then at that point display end of script
x = 1
while x <1000
    x = x+5
end
disp('end of script')

x =1
while x<1000
    if x<1000
        x=x+5
end
disp('end of script')

% exercise 2 write a script that starts with a vector of 10 random integers
% selected from 1 to 10 and outputs the value of each one by one to the
% screen
x = randi(10,1,10)
for ii = 1:length(x)
    disp(x(ii))
end

% how to pause a loop: put in pause; and will wait for you to hit any key
% to advance 

% can also use pause(.5) to have it pause for half a second but not super
% percise 

%this example is random becuae you have to get a 4 to pause may not have on
%in vector 
x = randi(10,1,10)
for ii = 1:length(x)
    disp(x(ii))
    if x(ii) == 4
        disp('paused')
        pause
    end
end

% the break function will get you out of a for and while loop

a = 1
while 1
    a=a*2
    if a>1000
        break
    end
end
%write a script that runs until the number 452 is randomly selectres from
%values 1 to 1000 keep track of all values that were tried before 
while 1
    x = randsample(1:1000,1);
    if x == 452
        disp('yay, x = 452')
        break
    else
        disp(x)
    end
end
%more simple version
x = randsample(1:1000,1);
while x ~= 452
    x = randsample(1:1000,1)
end

% class notes for 9_24 too other variations of this exercise
x = [];
while 1
    x(end+1) = randsample(1:1000,1);
    if x(end) == 452
        disp('yay, x = 452')
        break
    end
end

% using end and appending values
x = [ 1 2 3]
x(4) = 2
%use this to add values to end of vector so you dont have to count or find
%length of x
x(end+1) = 3
length(x)
x(7)= 1 % the indices i skipped will be filled with 0

%for the first loop of ii dd goes though 10 times so 100 times total 10 *10
% count is 100
count = 0;
for ii = 1:10
    for dd = 1:10
        count = count +1
        x(ii,dd)= count; % 1,1 then 1,2 etc the size of x is 10 by 10
    end
end
%x(ii,dd) is an index of a table or matrix that you are the placing count
%into it

% practice problems
%1. x = 'hello' create a script that prints one by one the letters of h
%then e then i 
x ='hello'
for letter = 1:length(x)
    disp(x(letter))
end

%2. do the same but this time do that same thing 10 times 

x ='hello'
for ii = 1:10
    for letter = 1:length(x)
        disp(x(letter))
    end
end

%3. write a script that randomly generates 100 integers slected from 1 to
%1000 write a variable odd consitiong of every odd number vs even

odd = []
even = []
for ii = 1:100
    x = randsample(1:1000,1)
    if rem(x,2) == 0
        even(end+1) = x
    else
        odd(end+1) = x
    end
end

% this is the same but instead of defining y use x(ii)
odd = []
even = []
x = randsample(1:1000,100)
for ii = 1:100
    if rem(x(ii),2) == 0
        even(end+1) = x(ii)
    else
        odd(end+1) = x(ii)
    end
end

% can I do this without loops?
x = randsample(1:1000, 100)
even = x(find(rem(x,2) == 0));
odd = x(find(rem(x,2) == 1));
    
