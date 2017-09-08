function [ first_t,second_t ] = extract_trials1( grp_th,grp_r )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t={[]};
for i=1:1:8
    t{i}=find(grp_th==i)';
end

first_r=[];
second_r=[];
first_t={};
second_t={};
 for i=1:1:8
     for j=1:1:size(t{i},2)
         if(grp_r(t{i}(j))==1)
             first_r=[first_r,t{i}(j)];
         else
             second_r=[second_r,t{i}(j)];
         end
     end
     first_t{i}=first_r;
     second_t{i}=second_r;
     first_r=[];
     second_r=[];
 end

end

