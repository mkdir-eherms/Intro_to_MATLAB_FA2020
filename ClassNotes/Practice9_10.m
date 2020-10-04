granger = imread('Granger4.jpg');
imagesc(granger)
x = size(granger)
numofPixels = x(1) * x(2)
tenpercent = round(x(1) - (x(1)*.1))
newgranger = granger(1:tenpercent,:,:);
imagesc(newgranger)
% doesn't seem to get more red
redgranger = newgranger(:,:,1)*2;
imagesc(redgranger)
graygranger = rgb2gray(newgranger);
imagesc(graygranger)
% calculate luminance (mean of the gray values)
mean(mean(granger(:,:,:)))
%this spits out the mean for each of the 3 rgb channels...
% duplicate gray scale image
duplicate = [granger(:,:,:), granger(:,:,:); granger(:,:,:), granger(:,:,:)];
imagesc(duplicate)
% regular gray sclae image make every 10th column with a white strip
