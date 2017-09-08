h11=histogram(H11);
y1=h11.Values;
for i=1:1:size(h11.BinEdges,2)-1
tt1(1,i)=h11.BinEdges(1,i+1)+h11.BinEdges(1,i)/2;
end
s1=h11.BinWidth;
h12=histogram(H12);
y2=h12.Values;
for i=1:1:size(h12.BinEdges,2)-1
tt2(1,i)=h12.BinEdges(1,i+1)+h12.BinEdges(1,i)/2;
end
s2=h12.BinWidth;
h21=histogram(H21);
y3=h21.Values;
for i=1:1:size(h21.BinEdges,2)-1
tt3(1,i)=h21.BinEdges(1,i+1)+h21.BinEdges(1,i)/2;
end
s3=h21.BinWidth;
h22=histogram(H22);
s4=h22.BinWidth;
y4=h22.Values;

for i=1:1:size(h22.BinEdges,2)-1
tt4(1,i)=h22.BinEdges(1,i+1)+h22.BinEdges(1,i)/2;
end
   yfilt1 = conv (y1, gaussFilter, 'same');
   %tt1
   yfilt2 = conv (y2, gaussFilter, 'same');
   %tt2
   yfilt3 = conv (y3, gaussFilter, 'same');
   %tt3
   yfilt4 = conv (y4, gaussFilter, 'same');
   %tt4


 [hit1,fa1 ] = calc_roc( yfilt1,tt1,yfilt2,tt2);
 [hit2,fa2]=calc_roc( yfilt3,tt3,yfilt4,tt4);
 commandwindow
 
%%manually removed duplicates,
 hit1=[0    0.4767    0.7373    1.0000    1.0000];
 fa1=[0    0.3750    0.5824    0.7934    1.0000];
  hit2=[0    0.8026    1.0000    1.0000];
  fa2=[0    0.4877    0.7456    1.0000];

close all

figure(11);
scatter(fa1,hit1);
hold on
plot(fa1,fa1,'r');
figure(12);
scatter(fa2,hit2);
hold on
plot(fa1,fa1,'r');
auroc1=calc_area_under_curve(hit1,fa1);
auroc2=calc_area_under_curve(hit2,fa2);
