x = [1:10]
disp(['The mean of my variable x is ' num2str(mean(x))])
disp('running')

%conditional statements - if statements run based on a property of code
%being true or false

a=randi(100,1) % get 1 random integer between 1 and 100

if rem(a,2)==0, %if a is an even number, rem() is remainder 
    disp('a is even')
end
% in class exercise 
if rem(a,2)==0, %if a is an even number, rem() is remainder 
    disp('a is even')
else 
    disp('a is odd')
    new_variable = a + 1 % make the odd number even
    disp('now it is even')
end
% in class exercise 
x = 3
if x == 5,
    disp('x is 5')
elseif x ==4
    disp('x is 4')
else
    disp('x is not 4 or 5')
end
% in class exercise
vec = randi(20, 1, 10)

if mean(vec) > 10 
    disp(mean(vec))
else
    disp('the mean is less than 10')
end
% in class exercise
vec = randi(20, 1, 10)

if mean(vec) > 10 
    disp(['the mean value is ' num2str(mean(vec))]) 
    % need the square brackets to put it together like a vector
else
    disp('the mean is less than 10')
end

vec = randi(20, 1, 10)
if find(vec(5))
    disp(['there is a 5 in vec and mean value is ' num2str(mean(vec))])
else
    disp(['no five and mean value is ' num2str(mean(vec))])
end

any(vec == 5) % returns 1 means yes returns 0 means no

