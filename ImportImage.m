granger = imread('Granger4.jpg');
tic, granger2 = imread('../../../../Pictures/Saved Pictures/Granger5.jpg'); toc
size(granger)
% spits out 2076, 1080, 3 where 3 tells us three channels of color red
% green blue
granger(1,1,:)
% in order to construct that color we need 70, 89, 103 (value between 0 to
% 255)
imagesc(granger)
% this puts all of 3d dimension to 255 = black? then change first two
% channels of color to 0 so now rectangle = blue
granger([1:100], [1:200], :) = 255;
granger([1:100], [1:200], [1:2]) = 0 ;

granger(:, :, :)*2

% granger(rows, columns, 3rddim) 3dim here is colors: red green blue 
imagesc(granger(:, 50, :)) % show me all rows and only first 50 columns and all colors

% 9/8/20 class
% load image using gray scale
tic, gray_image = 0.2989*granger(:,:,1) + 0.5870* granger(:,:,2) + 0.1140*granger(:,:,3); toc
colormap gray

%create vecotr v with 20 1s and then 20 2s in one long vector
v = [ones(20,1)', ones(20,1)'*2]
% this is faster
x = [ones(1,20), ones(1,20)*2]
% create a matrix with 20 rows and 10 columns where first 10 rows 
% are zeros and next 10 rows are 1s 
M = [zeros(10,10); ones(10,10)]

datestr(now)

% Randomization 
rand(10, 1) % 10 random values from o t0 1

x = randn(100,1) % this is 100 random values from normal distribution with 
% mean of 1 and 

% in a for loop it does all code in the block until it reaches the end then
% it goes back to the top of the for loop to do the next iteration until
% you have reached the "end" of your "object" (in this case size of granger)
% for x which is size of granger in first dimension starting at 1 
for x = 1: size(granger, 1)
    % y in size of granger in second dimension starting at 1 
    for y = 1: size(granger, 2)
        for z = 1: size(granger, 3)
            if granger(x, y, z) > 100
                granger(x, y, z) = 0;
            end
        end
    end
end

tic,
for x = 1: size(granger, 1)
    for y = 1: size(granger, 2)
      granger(x,y,1) = granger(x,y,1)*0.2989;
      granger(x,y,2) = granger(x,y,2)*0.5870;
      granger(x,y,3) = granger(x,y,3)*0.1140;
    end
end
toc