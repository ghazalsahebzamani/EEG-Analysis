
function [ s] = calc_area_under_curve( fy,fx )
s=0;
%[a,ind]=sort(fx);

%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
for i=1:1:size(fx,2)-1
    s=s+0.5*(fx(1,i+1)-fx(1,i))*(fy(1,i)+fy(1,i+1));
end
end

