close all
load('C:\Users\NMB\Downloads\conNU.mat')
load('C:\Users\NMB\Downloads\condLFP.mat')
load('C:\Users\NMB\Downloads\LFP1.mat')
load('C:\Users\NMB\Downloads\Nu.mat')
grp_r = [];
grp_th = condNU;
for i=1:1:16
  
 grp_th(condNU > 8) = condNU(condNU > 8)- 8;
grp_r(condNU < 9) = 1;
grp_r(condNU > 8) = 2; 
end
[ first_t,second_t ] = extract_trials1( grp_th,grp_r );
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%chosen neurons: 6,12,18,24
%%%%%%%%%raster plot
a= calc_raster( nu,6,first_t );
plot_rasters( a );
a= calc_raster( nu,12,first_t );
plot_rasters( a );
a= calc_raster( nu,18,first_t );
plot_rasters( a );
a= calc_raster( nu,24,first_t );
plot_rasters( a );
[ r1_psth,r2_psth ] =psth_extract( nu,1,3500,first_t,second_t,6,gaussFilter);
plot_psth(r1_psth);
plot_psth(r2_psth);
[ r1_psth,r2_psth ] =psth_extract( nu,1,3500,first_t,second_t,12,gaussFilter);
plot_psth(r1_psth);
plot_psth(r2_psth);
[ r1_psth,r2_psth ] =psth_extract( nu,1,3500,first_t,second_t,18,gaussFilter);
plot_psth(r1_psth);
plot_psth(r2_psth);
[ r1_psth,r2_psth ] =psth_extract( nu,1,3500,first_t,second_t,24,gaussFilter);
plot_psth(r1_psth);
plot_psth(r2_psth);

