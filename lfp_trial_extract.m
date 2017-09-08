%%%%%%%%%%%%%%%%%%%%% z
grp_r = [];
grp_th = Cond;
for i=1:1:16
  
 grp_th(Cond > 8) = Cond(Cond > 8)- 8;
grp_r(Cond < 9) = 1;
grp_r(Cond > 8) = 2; 
end
[ lfirst_t,lsecond_t ] = extract_trials1( grp_th,grp_r );
 plot_lfp(LFP,1000,1500,lfirst_t);
 plot_lfp(LFP,1000,1500,lsecond_t);
  plot_lfp(LFP,2700,3200,lfirst_t);
 plot_lfp(LFP,2700,3200,lsecond_t);
 