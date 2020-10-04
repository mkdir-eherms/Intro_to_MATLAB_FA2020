%1. load in a jpg file, this one happens to be in my currden wd
myimage = imread('Granger4.jpg');
imagesc(myimage) % view myimage

% place a blue squre so it covers the center 50x50 pixels
sizevec = size(myimage)

% getting center of image to know where middle 50x50 voxels are
centerofRows = round(sizevec(1)/2)
centerofColumns = round(sizevec(2)/2)

%changing middle 50x50 pixels to blue
myimage([(centerofRows-24):(centerofRows+25)], [(centerofColumns-24):(centerofColumns+25)],[1:2]) = 0 ;
myimage([(centerofRows-24):(centerofRows+25)], [(centerofColumns-24):(centerofColumns+25)],[3]) = 255 ;
imagesc(myimage)
axis image %forces the aspect ratio

%2. downsample resolution of your image by 2 use the round function
% I am skiping every other pizel in this solution 
%(it would be cool for something like an fmri voxel to average over the two
%instead of skipping)
downsamp = myimage(1:2:end, 1:2:end, :);
imagesc(downsamp)
axis image
size(downsamp) % verify have less pixels 

%3. convert any color image to gray scale using the formula
% will have the blue square in the image becuase we are using myimage, 
% which was modified in problem number 1

gray_image = 0.2989*myimage(:,:,1) + 0.5870*myimage(:,:,2) + 0.1140*myimage(:,:,3);
imagesc(gray_image)
axis image
colormap gray

% could also do a four loop for this problem instead
% I found that this method is slower

for x = 1: size(myimage, 1)
    for y = 1: size(myimage, 2)
      myimage(x,y,1) = myimage(x,y,1)*0.2989 + myimage(x,y,2)*0.5870 + myimage(x,y,3)*0.1140;
    end
end
myimage(:,:,[2:3]) = [];

imagesc(myimage)
colormap gray

%4. determine luminance of grayscale image and if less than 128 increase
%luminance by 20% then display image or if luminance is greater than 128
%decrease by 20% and display image
% if luminance is equal to 128 I am going to decrease by 20%
luminance = mean(mean(gray_image(:,:,1)))

if luminance < 128
    lumimage = gray_image(:,:,1)*1.2;
else
    lumimage = gray_image(:,:,1)*.8;
end
imagesc(lumimage)
axis image
colormap gray


%5. create a 10x1 vec
% randi([imin imax],m,n) - is it okay to have repeat #'s
v1 = randi([-10 10], 10,1);
[a,b] = sort(v1)
v2 = randi([-10, 10], 10,1);
sortV2 = v2(b,:);

%6. create a 100x2 matrix (M1) of normally distributed random values with
%mean of 0 and std of 1
M1 = randn(100, 2);
%this perfroms a paired ttest
[H,P,CI,STATS] = ttest(M1(:,1),M1(:,2))

%7. histogram
histogram(M1)
%cant see all of the data with these axes
axis([-1.5 1.5 0 50])
% finding positive values and doubling them in M1
M1(M1>0)= M1(M1>0)*2
% display and change axis 
histogram(M1)
axis([-2 6 0 100])

%8. percent of outliers
flatM1 = M1(:)
flatM1mean = mean(flatM1) 
flatM1std = std(flatM1)
numberoutliers = find(flatM1>(flatM1mean + 3*flatM1std) | flatM1<(flatM1mean - 3*flatM1std))
percentoutliers = length(numberoutliers)/length(flatM1) *100
flatM1(flatM1>(flatM1mean + 3*flatM1std) | flatM1<(flatM1mean - 3*flatM1std)) = NaN

%9/10. create a 3 dim matrix with day by subj by trials
data = randn(5, 15, 20)
datamean = mean(mean(data(:,:,:),3)) % mean of all trials across all days for each subject
mean(data(4,7,:)) % this is the average of all 20 trials for particpant 7 on day 4


