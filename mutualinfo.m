[ H11,H12] = mutualinfo_calc( nu,1000,1500,first_t,second_t,gaussFilter );
[ H21,H22] = mutualinfo_calc( nu,2700,3200,first_t,second_t,gaussFilter );
    figure(13);
    subplot(1,2,1);
    histogram(H11);
    subplot(1,2,2);
    histogram(H12);
    figure(14);
    subplot(1,2,1);
    histogram(H21);
    subplot(1,2,2);
    histogram(H22);
    
    
