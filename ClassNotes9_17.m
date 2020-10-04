%review if statements
% need to evalute if statments to zero or one as in true or false

% switch statements : usually can just do with if statement 

[dayString] = weekday(date,'long', 'en_US');
switch dayString
    case 'Monday'
        disp('ugh...')
    case 'Tuesday'
        disp('its not monday')
    otherwise
        disp('weekend')
end

%when you have many strings you need to use {} ex Monday, Tuesday,
%Wednesday etc.

%loops runs or loops over code and keeps executing (used instead of writing
%something many number of times)
%I want to run experiment for 5 min, so do these loop continuously for 5min
% for loops = specify doing something for a certain number of times
% while loops = do it until something happens run out of time or condition
% met

for x = 1:10
    x*2
    disp(x)
end

x = 2;
while x <=100, 
    x = x*2
end

for ii = 1:15,
    x(ii)=ii^2
end

% we have to initialize this one becuase of the end function 
x = [];
for ii = 1:15,
    x(end+1)=ii^2;
end

count = 0;
for ii = 1:15
    count = count+1;
end

