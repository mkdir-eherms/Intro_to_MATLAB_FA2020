
function [mymean mystd] = Functions(x)
    mymean = sum(x)/length(x);
    mystd = std(x);
end