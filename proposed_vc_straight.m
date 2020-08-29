%--------------------------------------------------------------------------
% Proposed voice conversion (T-matrix modification + spectrogram fusion
%--------------------------------------------------------------------------
%%
%-----------------------------------
% GMM training function estimation
%-----------------------------------
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
        mix=gmm_vc_training_straight(source,target,c,d);
        mkdir(strcat('D:/mix_gmm_simple/'));
        save(strcat('D:/mix_gmm_simple/','gmm_',source,'_',target,'.mat'),'mix');
        end
    end
end
%%
%---------------------------------------------------------------
% MFA (mixture of factor analyzer) training with T modification
%---------------------------------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
c=1;d=30;f=68;
for i=1:length(a)
    for j=1:length(a)
        j
        source=a{i};
        target=a{j};
        if strcmp(source,target)==1
            continue;
        else
        [y,f_mix]=mfa_vc_straight_simple_tmod(3,source,target,c,d,f);
        save(strcat('y_',source,'_',target,'_straight_simple_tmod.mat'),'y');
        save(strcat('f_mix_',source,'_',target,'_straight_simple_tmod.mat'),'f_mix');
        end
    end
end
%%
%-----------------------------------------
% Mean and variance of pitch estimation
%-----------------------------------------
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
        mkdir(strcat('E:/pitch_gmm_simple_tmod/'));
        save(strcat('E:/pitch_gmm_simple_tmod/','pitch_',source,'_',target,'.mat'),'source_data','target_data');
        end
    end
end
%%
%--------------------------------------------------------------------------
% Optimum alpha calculation for each conversion direction from development
% data
%--------------------------------------------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
for i1=1:length(a)
    for j1=1:length(a)
        j1
        source=a{i1};
        target=a{j1};
        if strcmp(source,target)==1
            continue;
        else
        opt_alpha_from_development_new(source,target,10);
        end
    end
end
%%
%--------------------------------------------------------------------------
%Evaluation and objective evaluation
% Proposed VC testing with T-modification and spectrogram fusion
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
            vc_evaluation_proposed_straight_simple(source,target,t,68);
        end
        end
    end
end




