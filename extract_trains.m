% %%%%%%%%extract trains

for i=1:1:25
    for j=1:1:8
    labels(8*(i-1)+j,1)=j;
    end
end

for i=1:1:25
    for j=1:1:8
        [ r1_psth,r2_psth ] =psth_extract( nu,1,3500,first_t,second_t,i,gaussFilter);
    X(8*(i-1)+j,:)=r1_psth{j}(1,:);
    end
end
oosLoss=zeros(1,16);
for i=1:1:20
    Mdl = fitcecoc(X,labels,'Crossval','on','KFold',5);
    oosLoss(1,i) = kfoldLoss(Mdl);
end
figure();
scatter([1:1:20],oosLoss)
a=histogram(oosLoss);
  