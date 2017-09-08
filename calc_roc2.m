
j=0;

for i=1:1:size(x1,2)
    th(1,i)=x1(i);
    j=j+1;
end
for i=1:1:size(x2,2)
    j=j+1;
    th(1,j)=x2(i);
    
end


th=sort(th);
a=0;
k=1;
flag=0;
for i=1:1:size(th,2)-1
   a=th(1,i);
   for j=i+1:1:size(th,2)
      if(th(1,j)==a)
          flag=1;
      end
   end
    
      if(flag==0)
          th2(1,k)=a;
          k=k+1;
      end
      flag=0;
end
      
fa=zeros(1,size(th2,2));
hit=ones(1,size(th2,2));
[a,ind]=find(th>=min(x1));
ind=min(ind);
ind1=ind;
ind2=ind;
ind3=0;
for i=1:1:size(x1,2)
    hit(1,ind1)=sum(y1(1,i:end))/sum(y1)
    ind1=ind1+1
end
for i=1:1:ind-1
    hit(1,i)=1;
end
for i=ind1:1:size(hit,2)
    hit(1,i)=0;
end
for i=1:1:size(x2,2)
   fa(1,i)=sum(y2(1,i:end))/sum(y2);
   ind3=ind3+1;
end
for i=ind3:1:size(fa,2)
    fa(1,i)=0;
end


    