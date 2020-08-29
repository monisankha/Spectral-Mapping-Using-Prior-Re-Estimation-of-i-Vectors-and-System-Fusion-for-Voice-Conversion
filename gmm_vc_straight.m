%--------------------------------------------------------------------------
% GMM training function estimation
%--------------------------------------------------------------------------
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
        mix=gmm_vc_training_straight_simple(source,target,c,d);
        mkdir(strcat('K:/labpc_backup_Gdrive/Backup D Drive/mix_gmm/'));
        save(strcat('K:/labpc_backup_Gdrive/Backup D Drive/mix_gmm/','gmm_',source,'_',target,'.mat'),'mix');
        end
    end
end
%--------------------------------------------------------------------------
% Mean and variance of pitch estimation
%--------------------------------------------------------------------------
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
        [source_data,target_data]=pitch_vc_straight(source,target,c,d);
        mkdir(strcat('K:/labpc_backup_Gdrive/pitch_gmm/'));
        save(strcat('K:/labpc_backup_Gdrive/pitch_gmm/','pitch_',source,'_',target,'.mat'),'source_data','target_data');
        end
    end
end

%--------------------------------------------------------------------------
%Evaluation and objective evaluation
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
           vc_evaluation_straight(source,target,t);
            end
        end
    end
end




