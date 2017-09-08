figure();
subplot(1,2,1);
scatter(H11,H21);
subplot(1,2,2);
scatter(H12,H22);
[r1,p1]=corrcoef(H11,H21);
r1(1,2)
p1(1,2)
 %%%%%for second r,between two intervals


[r2,p2]=corrcoef(H12,H22);
r2(1,2)
p2(1,2)
