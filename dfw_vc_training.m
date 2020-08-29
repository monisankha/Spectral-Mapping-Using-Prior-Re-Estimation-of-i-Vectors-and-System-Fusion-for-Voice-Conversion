%--------------------------------------------------------------------------
% Harmonic plus stochastic model (HSM) analysis of audio files
%--------------------------------------------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
c=1;d=30;
for i=1:length(a)
    nam=a{i};
    mkdir(strcat('K:\labpc_backup_Gdrive\monisankha\',nam,'_dfw\'));
    listofsourcefiles=importdata(strcat(nam,'list.text'));
    for k=c:d
        HSManalyze(listofsourcefiles{k},strcat('K:\labpc_backup_Gdrive\monisankha\',nam,'_dfw\arctic_a',num2str(k,'%04d')));
    end
end
%--------------------------------------------------------------------------
% HSM training
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
           mkdir('K:\labpc_backup_Gdrive\monisankha\corpus\');
           HSMpcorpus(strcat('K:\labpc_backup_Gdrive\monisankha\',source,'_dfw\arctic_a'),c:d,strcat('K:\labpc_backup_Gdrive\monisankha\',target,'_dfw\arctic_a'),c:d,4,'lab',strcat('K:\labpc_backup_Gdrive\monisankha\corpus\',source,'_',target));
           mkdir('K:\labpc_backup_Gdrive\monisankha\vcfunction\');
           HSMptraining(strcat('K:\labpc_backup_Gdrive\monisankha\corpus\',source,'_',target),strcat('K:\labpc_backup_Gdrive\monisankha\vcfunction\',source,'_',target),8);

        end
     end
end
%--------------------------------------------------------------------------
%Evaluation and objective evaluation
%--------------------------------------------------------------------------
clear;clc;
a={'BDL','RMS','SLT','CLB'};
for i1=1:length(a)
    for j=1:length(a)
        source=a{i1};
        target=a{j};
        listofsourcefiles=importdata(strcat(source,'list.text'));
        listoftargetfiles=importdata(strcat(target,'list.text'));
        if strcmp(source,target)==1
            continue;
        else
        for t=51:70
            mkdir('K:\labpc_backup_Gdrive\monisankha\dfw_wavefile\');
            HSManalyze(listofsourcefiles{t},strcat('K:\labpc_backup_Gdrive\monisankha\',source,'_dfw\arctic_a',num2str(t,'%04d')));
            HSMwfwconvert(strcat('K:\labpc_backup_Gdrive\monisankha\vcfunction\',source,'_',target),strcat('K:\labpc_backup_Gdrive\monisankha\',source,'_dfw\arctic_a',num2str(t,'%04d'),'.mat'),strcat('K:\labpc_backup_Gdrive\monisankha\',source,'_dfw\conv_arctic_a',num2str(t,'%04d'),'.mat'),'mdb');
            HSMsynthesize(strcat('K:\labpc_backup_Gdrive\monisankha\',source,'_dfw\conv_arctic_a',num2str(t,'%04d'),'.mat'),strcat('K:\labpc_backup_Gdrive\monisankha\dfw_wavefile\',source,'_',target,'_00',int2str(t),'.wav'));
            pesq_gmm=pesq(listoftargetfiles{t},strcat('K:\labpc_backup_Gdrive\monisankha\dfw_wavefile\',source,'_',target,'_00',int2str(t),'.wav'));
            mcd_gmm=mcd_calculation(listoftargetfiles{t},strcat('K:\labpc_backup_Gdrive\monisankha\dfw_wavefile\',source,'_',target,'_00',int2str(t),'.wav'));
            mkdir('K:\labpc_backup_Gdrive\monisankha\dfw_objectiveevaluation\');
            save(strcat('K:\labpc_backup_Gdrive\monisankha\dfw_objectiveevaluation\pesq_',source,'_',target,'_00',int2str(t),'.mat'),'pesq_gmm');
            save(strcat('K:\labpc_backup_Gdrive\monisankha\dfw_objectiveevaluation\mcd_',source,'_',target,'_00',int2str(t),'.mat'),'mcd_gmm');
        end
        end
    end
end

%------------------------------o-------------------------------------------


