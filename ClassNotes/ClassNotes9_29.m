sampRecord = []
for ii = 1:10000
    nd1 = randn(100, 1);
    nd2 = randn(100, 1);
    [H, P] = ttest2(nd1, nd2);
    sampRecord(end+1) = P;
end
hist(sampRecord)

%instead of doing [H, P] can put a tilda in for H if we dont want that info
for ii = 1:10000
    nd1 = randn(100, 1);
    nd2 = randn(100, 1);
    [~, p(ii)] = ttest2(nd1, nd2);
end
hist(p)

ii = 1
while ii<10001
    nd1 = randn(100, 1);
    nd2 = randn(100, 1);
    [~, p(ii)] = ttest2(nd1, nd2);
    ii = ii +1;
end
hist(p)

% write a script that continuously increements a value and stops after 5
% seconds 
num = 0
tic
while toc<5
    num = num + 1;
    disp(toc)
end

% with start time notation
num = 0
start_time = tic;
while toc(start_time) < 5,
    num = num + 1;
end

%same as above but write the count to the screen every 1000 increments
num = 0
tic
while toc<5
    num = num + 1;
    if rem((num/1000),1) == 0
        disp(num)
    end
end

%Clas notes from 10/1
% ex sometimes we want to pull a number when evenly divisible by 5 AND 3
% vs sometimes we want to pull a number when evently divisible by 5 OR 3 

% & vs && the second as if two or more things (criteria are met) and ony
% works with scalar values 
        % && short circuts meaning that if the first is false it wont even
        % look at the second piece becuae overall it is false
        % for one & it works with arrays and any non zero number is true
4 > 2 && 1 > 5
%evalues if both numbers in first index non zero and then goes on to next index
[5 7 0] & [1 0 6]

% if you want to know if one is true but not both use xor
% a single pipe or works with arrays
% a double pipe or works with scalars only again short circuts

%lets try some practice

x=randn(10,2)
for ii = 1:10
    out(ii) = x(ii,1) >= 0 | x(ii,2) >= 0
end

% this 
x = randn(10,2)
out = x(:,1)>= 0 | x(:,2)>=0
[x out]

x = randn(10,2)
out = xor(x(:,1)>=0, x(:,2)>=0)
[x out]

exist('x') %lookig for a variable so need single quotes can also check for files
exist('x', 'var') %can be more specific that is there an x variable

isempty(x) % is x empty?

%input function examples
age = input('How old are you?  ')
subjectid = input('Subject ID?   ','s') %allows answers to be strings

%Lets write some functions!!!! useful for modules of code that you plan on
%uisng relatively often 
%they are the same as a script just apply a line first

%function [my_answer]= my_mean(x)
    mymean = sum(x)/length(x)
%end
