%--------------------------------------------------------------------------
% Simple MFA or i-vector based VC. Here no T-matrix modification is
% incorporated
%--------------------------------------------------------------------------

clear;clc;

%------------------
% Old-T estimation
%------------------

load suff_stat128_straight.mat;
load phonetic_gmm_straight.mat;
m=reshape(mix.centres,1,128*24);
E=reshape(mix.covars,1,128*24);
f=68;
T= randn(f,128*24) * sum(E,2) * 0.001;
% v=rand(100,1792);
for i=1:10
    i
    T =estimate_t(F', N', S', m, E, T);
end
save T_128_straight_68.mat T;

%-------------------
% a_k estimation
%-------------------

a_k=blkdiag(T,T);
save a_k128_straight_68.mat a_k;

%--------------------------------------------------------------------------
% MFA training function estimation
%--------------------------------------------------------------------------
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
        [y,f_mix]=mfa_vc_straight_simple(3,source,target,c,d,f);
        save(strcat('y_',source,'_',target,'_straight_simple.mat'),'y');
        save(strcat('f_mix_',source,'_',target,'_straight_simple.mat'),'f_mix');
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
        [source_data,target_data]=pitch_vc_straight_simple(source,target,c,d);
        mkdir(strcat('E:/pitch_gmm_simple/'));
        save(strcat('E:/pitch_gmm_simple/','pitch_',source,'_',target,'.mat'),'source_data','target_data');
        end
    end
end

%--------------------------------------------------------------------------
%Evaluation and objective evaluation
%--------------------------------------------------------------------------

for i=1:length(a)
    for j=1:length(a)
        source=a{i};
        target=a{j};
        if strcmp(source,target)==1
            continue;
        else
        for t=51:70
            vc_evaluation_straight_mfa_simple(source,target,t,68);

        end
        end
    end
end




