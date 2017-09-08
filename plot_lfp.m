function [ raw] = plot_lfp(LFP,start,endd,sig)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

t=start:1:endd;
figure();
for i=1:1:8
subplot(4,2,i)

hold on
summ=zeros(1,size(t,2));
for j=1:1:size(sig{i},2)
summ=summ+LFP(sig{i}(1,j),1000:1500);
end
summ=summ/size(sig{i},2);
raw=abs(fft(autocorr(summ)));

plot(raw)
end
hold off

end

