function [ a ] = calc_raster( nu,neuron_num,first_t )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
for j=1:1:8
    for i=1:1:8
        a(i,:)=i*(nu{1,neuron_num}(first_t{j}(1,i),:));
    end
end



end

