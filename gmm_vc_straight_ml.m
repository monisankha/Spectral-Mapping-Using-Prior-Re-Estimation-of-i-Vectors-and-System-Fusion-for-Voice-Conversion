%--------------------------------------------------------------------------
% GMM-ML voice conversion (According to Toda et al. 2007)
%--------------------------------------------------------------------------
%-------------------------------------------------------
% GMM training function estimation with dynamic feature
%-------------------------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
c=1;d=30;
for i=1:length(a)
    for j=1:length(a)
        j
        source=a{i};
        target=a{j};
        if strcmp(source,target)==1
            continue;
        else
        mix=gmm_vc_training_straight_ml(source,target,c,d)
        mkdir(strcat('E:/mix_gmm_ml/'));
        save(strcat('E:/mix_gmm_ml/','gmm_',source,'_',target,'.mat'),'mix');
        end
    end
end

%---------------------------------------
% Mean and variance of pitch estimation
%---------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
c=1;d=30;
for i=1:length(a)
    for j=1:length(a)
        source=a{i};
        target=a{j};
        if strcmp(source,target)==1
            continue;
        else
        [source_data,target_data]=pitch_vc_straight_simple(source,target,c,d);
        mkdir(strcat('I:/Backup D Drive/pitch_gmm_simple/'));
        save(strcat('I:/Backup D Drive/pitch_gmm_simple/','pitch_',source,'_',target,'.mat'),'source_data','target_data');
        end
    end
end

%--------------------------------------------------------------------------
% Evaluation and objective evaluation
% Voice conversion according to maximum-likelihood criteria (Toda et al.
% 2007)
%--------------------------------------------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
for i=1:length(a)
    for j=1:length(a)
        source=a{i};
        target=a{j};
        if strcmp(source,target)==1
            continue;
        else
        for t=51:70
           vc_evaluation_straight_simple_ml(source,target,t)
        end
        end
    end
end




