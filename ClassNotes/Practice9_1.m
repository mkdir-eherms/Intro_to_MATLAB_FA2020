%1:
M1 = [1:10; 11:20; 21:30];

%2:
M2 = [31:40; 41:50; 51:60];
M2 = [M2]'

%3:
%Can I take the mean of means? ex in math when you 
%cant take the mean of means in two samples with
%different n's have different influence on overall mean
x = mean(mean([M1(:), M2(:)])) 
% it concatinates matrices into 2 columns lots of rows 
%instead we should do this
mean([M1(:); M2(:)])

%4:
M3 = [M1; [M2]'] % combine matrices here

%5:
median(M3) % median across each column

%6:
median(M3, 2)
%? why is row considered the second dimension when indexing it is r,c
median(M3(:)) % median of entire matrix M3 

%7:
% is there a better way to do these next 4 lines of code
M4 = M3
M4(2,:)=[]
M4(:,1)=[]
M4(:,[end-1:end])=[]
%better!!!!
M4_2 = M3([1,3:6],[2:8])

%8:
mean(M4(2,:))
std(M4(2,:))

%9:
M5 = (M3)*2

%10:
mean(M5(:)) == 2*mean(M3(:))

%11/12:
text_string = 'matlab is not fun!';
text_string = replace(text_string, ' not', '')