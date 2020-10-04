
function [mymean mystd] = meanstd(x)
%This function will calculate the mean and std using pre-created mean and
%std functions. However, now you can see both in a clean output.
    mymean = mean(x);
    mystd = std(x);
    disp(['My mean is ' num2str(mymean) ' and my standard deviation is ' num2str(mystd)])
    