x = [1:20]
order = randsample(x, 20)
% want random order for images 101 to 120
imageorder = randsample(101:120,20)

vec = randn(1000000,1)';
histogram(vec)

% subtract 4 of these random values
histogram(randn(1000000,1)'-4);

x = [1:20]
y = [15:35]
groupA = randsample(x,20, true)
groupB = randsample(y,20, true)

mean(groupA)
mean(groupB)

mat = [1:10;1:10]
mat > 5
sum(mat(mat>5))
sum(mat>5)

% create a matrix that is 20 by 10 filled with random numbers
array = randn(20,10)
% find the mean of those random numbers that are greater or equal to zero
mean(array(array>=0))

% the find function here will tell us what index these numbers that are
% less than 5 are located
list = [3 6 4 2 5 8 9 7]
find(list<5)

data = randn(1000,1);
stddata = std(data)
meandata = mean(data)
find(data>(meandata + (3*stddata)))

%simpleversion
find(data>(mean(data)+std(data)*3))

% function sortrows() 
sortrows(rr, 1) %to sort by column 1 vs ,2 to sort by column 2

aa = randn(1,10)
[a,b] = sort(aa)
[aa a b]
% allows you to save how the data was sorted to see original and
% transformed

data = [2, 3, 1, 5, 7, 4, 9, 8, 6, 10]
data([2:8])
% instead of saying i want data([8 5 6 2 3 etc])
[a, b] = sort(data)
[aa a b]

