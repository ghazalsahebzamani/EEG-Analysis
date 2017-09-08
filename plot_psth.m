function [] = plot_psth( psth )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

figure();
hold on
for i=1:1:8
%subplot(4,2,i)
plot([1:1:3500],psth{i});
end
hold off


