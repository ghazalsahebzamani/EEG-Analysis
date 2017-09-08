
function [ r1_psth,r2_psth ] =psth_extract( nu,start,endd,first_t,second_t,neuron_num,gaussFilter)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
psth=0;
r1_psth={[]};
r2_psth={[]};
for j=1:1:8
    for i=1:1:size(first_t{j},2)
        psth=psth+(nu{1,neuron_num}(first_t{j}(1,i),start:1:endd));
    end
    raw_psth=psth/size(first_t{j},2);
    yfilt = conv (raw_psth, gaussFilter, 'same');
    r1_psth{j}=yfilt;
    psth=0;
    for i=1:1:size(second_t{j},2)
        psth=psth+(nu{1,neuron_num}(second_t{j}(1,i),start:1:endd));
    end
    raw_psth=psth/size(second_t{j},2);
   yfilt = conv (raw_psth, gaussFilter, 'same');
   r2_psth{j}=yfilt;
   psth=0;
end

end

