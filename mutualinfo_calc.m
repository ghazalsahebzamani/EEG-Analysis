function [ H1,H2] = mutualinfo_calc( nu,start,endd,first_t,second_t,gaussFilter )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
H1=zeros(1,25);
H2=zeros(1,25);

for k=1:1:25
[r1_psth,r2_psth]=psth_extract(nu,start,endd,first_t,second_t,k,gaussFilter);
prs1=0;
prs2=0;
for i=1:1:8
    prs1=prs1+r1_psth{i};
    prs2=prs2+r2_psth{i};
end

pr1=1/8*prs1;
pr2=1/8*prs2;
%%%%%%%%%%%%%%%
hn1=0;
hr1=0;
hn2=0;
hr2=0;
for i=1:1:8
    for j=1:1:size(r1_psth{i})
        hn1=hn1+1/8*r1_psth{i}(1,j)*log2(r1_psth{i}(1,j));
    end
end
for i=1:1:size(pr1)
    
    hr1=hr1+pr1(1,i)*log2(pr1(1,i));
end

for i=1:1:8
    for j=1:1:size(r2_psth{i})
        hn2=hn2+1/8*r2_psth{i}(1,j)*log2(r2_psth{i}(1,j));
    end
end
for i=1:1:size(pr2)
    
    hr2=hr2+pr2(1,i)*log2(pr2(1,i));
end
    H1(1,k)=hn1-hr1;
    H2(1,k)=hn2-hr2;

end

end


