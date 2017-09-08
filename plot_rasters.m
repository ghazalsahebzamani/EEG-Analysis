function [] = plot_rasters( a )
time=1:1:3500;
figure();
hold on
for i=1:1:8
    subplot(4,2,i)
    plot(time,a,'.');
end

