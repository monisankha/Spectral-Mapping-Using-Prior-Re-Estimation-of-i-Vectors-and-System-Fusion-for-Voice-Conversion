%==========================================================================
% Subjective evaluation
%==========================================================================
%----------------------------------------------------------------
% Bar plot with 95% confidence interval
%----------------------------------------------------------------
% Quality assessment
%------
%M->M
%------
% Source

clear;clc;
load source_qual_mtom_mod.mat m2;
source_mean_quality_mtom=mean(m2);
source_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save source_qual_mtom_mean_std.mat source_mean_quality_mtom source_std_quality_mtom;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_qual_mtom_mod.mat;

dfw_qual_mtom=[m2 ankur_dfw_qual_mtom jivnesh_dfw_qual_mtom koushik_dfw_qual_mtom];
save dfw_qual_mtom_all.mat dfw_qual_mtom;
m2=dfw_qual_mtom;
dfw_mean_quality_mtom=mean(m2);
dfw_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_qual_mtom_mean_std.mat dfw_mean_quality_mtom dfw_std_quality_mtom;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_qual_mtom_mod.mat;

jdgmm_qual_mtom=[m2 ankur_jdgmm_qual_mtom jivnesh_jdgmm_qual_mtom koushik_jdgmm_qual_mtom];
save jdgmm_qual_mtom_all.mat jdgmm_qual_mtom;
m2=jdgmm_qual_mtom;
jdgmm_mean_quality_mtom=mean(m2);
jdgmm_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_qual_mtom_mean_std.mat jdgmm_mean_quality_mtom jdgmm_std_quality_mtom;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_qual_mtom_mod.mat;

proposed_qual_mtom=[m2 ankur_proposed_qual_mtom jivnesh_proposed_qual_mtom koushik_proposed_qual_mtom];
save proposed_qual_mtom_all.mat proposed_qual_mtom;
m2=proposed_qual_mtom;
proposed_mean_quality_mtom=mean(m2);
proposed_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_qual_mtom_mean_std.mat proposed_mean_quality_mtom proposed_std_quality_mtom;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_qual_mtom_mod.mat;

mfa_qual_mtom=[m2 ankur_mfa_qual_mtom jivnesh_mfa_qual_mtom koushik_mfa_qual_mtom];
save mfa_qual_mtom_all.mat mfa_qual_mtom;
m2=mfa_qual_mtom;
mfa_mean_quality_mtom=mean(m2);
mfa_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_qual_mtom_mean_std.mat mfa_mean_quality_mtom mfa_std_quality_mtom;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_qual_mtom_mod.mat;

mlgmm_qual_mtom=[m2 ankur_mlgmm_qual_mtom jivnesh_mlgmm_qual_mtom koushik_mlgmm_qual_mtom];
save mlgmm_qual_mtom_all.mat mlgmm_qual_mtom;
m2=mlgmm_qual_mtom;
mlgmm_mean_quality_mtom=mean(m2);
mlgmm_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_qual_mtom_mean_std.mat mlgmm_mean_quality_mtom mlgmm_std_quality_mtom;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_qual_mtom=[Arif_proposed1_qual_mtom Shefali_proposed1_qual_mtom Susmita_proposed1_qual_mtom Kasturi_proposed1_qual_mtom Pranab_proposed1_qual_mtom Nandini_proposed1_qual_mtom...
    Akanksa_proposed1_qual_mtom Dipjyoti_proposed1_qual_mtom Irin_proposed1_qual_mtom Nikhil_proposed1_qual_mtom Kishore_proposed1_qual_mtom Lily_proposed1_qual_mtom Siri_proposed1_qual_mtom...
    ankur_mfatmod_qual_mtom jivnesh_mfatmod_qual_mtom koushik_mfatmod_qual_mtom];

save proposed1_qual_mtom_all.mat proposed1_qual_mtom;
m2=proposed1_qual_mtom;
proposed1_mean_quality_mtom=mean(m2);
proposed1_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_qual_mtom_mean_std.mat proposed1_mean_quality_mtom proposed1_std_quality_mtom;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_qual_mtom=[Arif_gmmfusion_qual_ftof Arnab_gmmfusion_qual_ftof Shefali_gmmfusion_qual_ftof Susmita_gmmfusion_qual_ftof Kasturi_gmmfusion_qual_ftof Pranab_gmmfusion_qual_ftof...
    Akanksha_gmmfusion_qual_ftof Dipjyoti_gmmfusion_qual_ftof Irin_gmmfusion_qual_ftof Nandini_gmmfusion_qual_ftof Nikhil_gmmfusion_qual_ftof Kishore_gmmfusion_qual_ftof...
    ankur_gmmfusion_qual_mtom jivnesh_gmmfusion_qual_mtom koushik_gmmfusion_qual_mtom];

save gmmfusion_qual_mtom_all.mat gmmfusion_qual_mtom;
m2=gmmfusion_qual_mtom;
gmmfusion_mean_quality_mtom=mean(m2);
gmmfusion_std_quality_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_qual_mtom_mean_std.mat gmmfusion_mean_quality_mtom gmmfusion_std_quality_mtom;
%-----------------------------------------------------
%------
%M->F
%------
% Source

clear;clc;
load source_qual_mtof_mod.mat m2;
source_mean_quality_mtof=mean(m2);
source_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save source_qual_mtof_mean_std.mat source_mean_quality_mtof source_std_quality_mtof;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_qual_mtof_mod.mat;

dfw_qual_mtof=[m2 ankur_dfw_qual_mtof jivnesh_dfw_qual_mtof koushik_dfw_qual_mtof];
save dfw_qual_mtof_all.mat dfw_qual_mtof;
m2=dfw_qual_mtof;
dfw_mean_quality_mtof=mean(m2);
dfw_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_qual_mtof_mean_std.mat dfw_mean_quality_mtof dfw_std_quality_mtof;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_qual_mtof_mod.mat;

jdgmm_qual_mtof=[m2 ankur_jdgmm_qual_mtof jivnesh_jdgmm_qual_mtof koushik_jdgmm_qual_mtof];
save jdgmm_qual_mtof_all.mat jdgmm_qual_mtof;
m2=jdgmm_qual_mtof;
jdgmm_mean_quality_mtof=mean(m2);
jdgmm_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_qual_mtof_mean_std.mat jdgmm_mean_quality_mtof jdgmm_std_quality_mtof;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_qual_mtof_mod.mat;

proposed_qual_mtof=[m2 ankur_proposed_qual_mtof jivnesh_proposed_qual_mtof koushik_proposed_qual_mtof];
save proposed_qual_mtof_all.mat proposed_qual_mtof;
m2=proposed_qual_mtof;
proposed_mean_quality_mtof=mean(m2);
proposed_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_qual_mtof_mean_std.mat proposed_mean_quality_mtof proposed_std_quality_mtof;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_qual_mtof_mod.mat;

mfa_qual_mtof=[m2 ankur_mfa_qual_mtof jivnesh_mfa_qual_mtof koushik_mfa_qual_mtof];
save mfa_qual_mtof_all.mat mfa_qual_mtof;
m2=mfa_qual_mtof;
mfa_mean_quality_mtof=mean(m2);
mfa_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_qual_mtof_mean_std.mat mfa_mean_quality_mtof mfa_std_quality_mtof;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_qual_mtof_mod.mat;

mlgmm_qual_mtof=[m2 ankur_mlgmm_qual_mtof jivnesh_mlgmm_qual_mtof koushik_mlgmm_qual_mtof];
save mlgmm_qual_mtof_all.mat mlgmm_qual_mtof;
m2=mlgmm_qual_mtof;
mlgmm_mean_quality_mtof=mean(m2);
mlgmm_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_qual_mtof_mean_std.mat mlgmm_mean_quality_mtof mlgmm_std_quality_mtof;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_qual_mtof=[Arif_proposed1_qual_mtof Shefali_proposed1_qual_mtof Susmita_proposed1_qual_mtof Kasturi_proposed1_qual_mtof Pranab_proposed1_qual_mtof Nandini_proposed1_qual_mtof...
    Akanksa_proposed1_qual_mtof Dipjyoti_proposed1_qual_mtof Irin_proposed1_qual_mtof Nikhil_proposed1_qual_mtof Kishore_proposed1_qual_mtof Lily_proposed1_qual_mtof Siri_proposed1_qual_mtof...
    ankur_mfatmod_qual_mtof jivnesh_mfatmod_qual_mtof koushik_mfatmod_qual_mtof];

save proposed1_qual_mtof_all.mat proposed1_qual_mtof;
m2=proposed1_qual_mtof;
proposed1_mean_quality_mtof=mean(m2);
proposed1_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_qual_mtof_mean_std.mat proposed1_mean_quality_mtof proposed1_std_quality_mtof;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_qual_mtof=[Arif_gmmfusion_qual_mtof Arnab_gmmfusion_qual_mtof Shefali_gmmfusion_qual_mtof Susmita_gmmfusion_qual_mtof Kasturi_gmmfusion_qual_mtof Pranab_gmmfusion_qual_mtof...
    Akanksha_gmmfusion_qual_mtof Dipjyoti_gmmfusion_qual_mtof Irin_gmmfusion_qual_mtof Nandini_gmmfusion_qual_mtof Nikhil_gmmfusion_qual_mtof Kishore_gmmfusion_qual_mtof...
    ankur_gmmfusion_qual_mtof jivnesh_gmmfusion_qual_mtof koushik_gmmfusion_qual_mtof];

save gmmfusion_qual_mtof_all.mat gmmfusion_qual_mtof;
m2=gmmfusion_qual_mtof;
gmmfusion_mean_quality_mtof=mean(m2);
gmmfusion_std_quality_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_qual_mtof_mean_std.mat gmmfusion_mean_quality_mtof gmmfusion_std_quality_mtof;
%-----------------------------------------------------

%------
%F->M
%------
% Source

clear;clc;
load source_qual_ftom_mod.mat m2;
source_mean_quality_ftom=mean(m2);
source_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save source_qual_ftom_mean_std.mat source_mean_quality_ftom source_std_quality_ftom;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_qual_ftom_mod.mat;

dfw_qual_ftom=[m2 ankur_dfw_qual_ftom jivnesh_dfw_qual_ftom koushik_dfw_qual_ftom];
save dfw_qual_ftom_all.mat dfw_qual_ftom;
m2=dfw_qual_ftom;
dfw_mean_quality_ftom=mean(m2);
dfw_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_qual_ftom_mean_std.mat dfw_mean_quality_ftom dfw_std_quality_ftom;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_qual_ftom_mod.mat;

jdgmm_qual_ftom=[m2 ankur_jdgmm_qual_ftom jivnesh_jdgmm_qual_ftom koushik_jdgmm_qual_ftom];
save jdgmm_qual_ftom_all.mat jdgmm_qual_ftom;
m2=jdgmm_qual_ftom;
jdgmm_mean_quality_ftom=mean(m2);
jdgmm_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_qual_ftom_mean_std.mat jdgmm_mean_quality_ftom jdgmm_std_quality_ftom;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_qual_ftom_mod.mat;

proposed_qual_ftom=[m2 ankur_proposed_qual_ftom jivnesh_proposed_qual_ftom koushik_proposed_qual_ftom];
save proposed_qual_ftom_all.mat proposed_qual_ftom;
m2=proposed_qual_ftom;
proposed_mean_quality_ftom=mean(m2);
proposed_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_qual_ftom_mean_std.mat proposed_mean_quality_ftom proposed_std_quality_ftom;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_qual_ftom_mod.mat;

mfa_qual_ftom=[m2 ankur_mfa_qual_ftom jivnesh_mfa_qual_ftom koushik_mfa_qual_ftom];
save mfa_qual_ftom_all.mat mfa_qual_ftom;
m2=mfa_qual_ftom;
mfa_mean_quality_ftom=mean(m2);
mfa_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_qual_ftom_mean_std.mat mfa_mean_quality_ftom mfa_std_quality_ftom;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_qual_ftom_mod.mat;

mlgmm_qual_ftom=[m2 ankur_mlgmm_qual_ftom jivnesh_mlgmm_qual_ftom koushik_mlgmm_qual_ftom];
save mlgmm_qual_ftom_all.mat mlgmm_qual_ftom;
m2=mlgmm_qual_ftom;
mlgmm_mean_quality_ftom=mean(m2);
mlgmm_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_qual_ftom_mean_std.mat mlgmm_mean_quality_ftom mlgmm_std_quality_ftom;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_qual_ftom=[Arif_proposed1_qual_ftom Shefali_proposed1_qual_ftom Susmita_proposed1_qual_ftom Kasturi_proposed1_qual_ftom Pranab_proposed1_qual_ftom Nandini_proposed1_qual_ftom...
    Akanksa_proposed1_qual_ftom Dipjyoti_proposed1_qual_ftom Irin_proposed1_qual_ftom Nikhil_proposed1_qual_ftom Kishore_proposed1_qual_ftom Lily_proposed1_qual_ftom Siri_proposed1_qual_ftom...
    ankur_mfatmod_qual_ftom jivnesh_mfatmod_qual_ftom koushik_mfatmod_qual_ftom];

save proposed1_qual_ftom_all.mat proposed1_qual_ftom;
m2=proposed1_qual_ftom;
proposed1_mean_quality_ftom=mean(m2);
proposed1_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_qual_ftom_mean_std.mat proposed1_mean_quality_ftom proposed1_std_quality_ftom;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_qual_ftom=[Arif_gmmfusion_qual_ftom Arnab_gmmfusion_qual_ftom Shefali_gmmfusion_qual_ftom Susmita_gmmfusion_qual_ftom Kasturi_gmmfusion_qual_ftom Pranab_gmmfusion_qual_ftom...
    Akanksha_gmmfusion_qual_ftom Dipjyoti_gmmfusion_qual_ftom Irin_gmmfusion_qual_ftom Nandini_gmmfusion_qual_ftom Nikhil_gmmfusion_qual_ftom Kishore_gmmfusion_qual_ftom...
    ankur_gmmfusion_qual_ftom jivnesh_gmmfusion_qual_ftom koushik_gmmfusion_qual_ftom];

save gmmfusion_qual_ftom_all.mat gmmfusion_qual_ftom;
m2=gmmfusion_qual_ftom;
gmmfusion_mean_quality_ftom=mean(m2);
gmmfusion_std_quality_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_qual_ftom_mean_std.mat gmmfusion_mean_quality_ftom gmmfusion_std_quality_ftom;
%-----------------------------------------------------

%------
%F->F
%------
% Source

clear;clc;
load source_qual_ftof_mod.mat m2;
source_mean_quality_ftof=mean(m2);
source_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save source_qual_ftof_mean_std.mat source_mean_quality_ftof source_std_quality_ftof;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_qual_ftof_mod.mat;

dfw_qual_ftof=[m2 ankur_dfw_qual_ftof jivnesh_dfw_qual_ftof koushik_dfw_qual_ftof];
save dfw_qual_ftof_all.mat dfw_qual_ftof;
m2=dfw_qual_ftof;
dfw_mean_quality_ftof=mean(m2);
dfw_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_qual_ftof_mean_std.mat dfw_mean_quality_ftof dfw_std_quality_ftof;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_qual_ftof_mod.mat;

jdgmm_qual_ftof=[m2 ankur_jdgmm_qual_ftof jivnesh_jdgmm_qual_ftof koushik_jdgmm_qual_ftof];
save jdgmm_qual_ftof_all.mat jdgmm_qual_ftof;
m2=jdgmm_qual_ftof;
jdgmm_mean_quality_ftof=mean(m2);
jdgmm_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_qual_ftof_mean_std.mat jdgmm_mean_quality_ftof jdgmm_std_quality_ftof;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_qual_ftof_mod.mat;

proposed_qual_ftof=[m2 ankur_proposed_qual_ftof jivnesh_proposed_qual_ftof koushik_proposed_qual_ftof];
save proposed_qual_ftof_all.mat proposed_qual_ftof;
m2=proposed_qual_ftof;
proposed_mean_quality_ftof=mean(m2);
proposed_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_qual_ftof_mean_std.mat proposed_mean_quality_ftof proposed_std_quality_ftof;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_qual_ftof_mod.mat;

mfa_qual_ftof=[m2 ankur_mfa_qual_ftof jivnesh_mfa_qual_ftof koushik_mfa_qual_ftof];
save mfa_qual_ftof_all.mat mfa_qual_ftof;
m2=mfa_qual_ftof;
mfa_mean_quality_ftof=mean(m2);
mfa_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_qual_ftof_mean_std.mat mfa_mean_quality_ftof mfa_std_quality_ftof;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_qual_ftof_mod.mat;

mlgmm_qual_ftof=[m2 ankur_mlgmm_qual_ftof jivnesh_mlgmm_qual_ftof koushik_mlgmm_qual_ftof];
save mlgmm_qual_ftof_all.mat mlgmm_qual_ftof;
m2=mlgmm_qual_ftof;
mlgmm_mean_quality_ftof=mean(m2);
mlgmm_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_qual_ftof_mean_std.mat mlgmm_mean_quality_ftof mlgmm_std_quality_ftof;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_qual_ftof=[Arif_proposed1_qual_ftof Shefali_proposed1_qual_ftof Susmita_proposed1_qual_ftof Kasturi_proposed1_qual_ftof Pranab_proposed1_qual_ftof Nandini_proposed1_qual_ftof...
    Akanksa_proposed1_qual_ftof Dipjyoti_proposed1_qual_ftof Irin_proposed1_qual_ftof Nikhil_proposed1_qual_ftof Kishore_proposed1_qual_ftof Lily_proposed1_qual_ftof Siri_proposed1_qual_ftof...
    ankur_mfatmod_qual_ftof jivnesh_mfatmod_qual_ftof koushik_mfatmod_qual_ftof];

save proposed1_qual_ftof_all.mat proposed1_qual_ftof;
m2=proposed1_qual_ftof;
proposed1_mean_quality_ftof=mean(m2);
proposed1_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_qual_ftof_mean_std.mat proposed1_mean_quality_ftof proposed1_std_quality_ftof;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_qual_ftof=[Arif_gmmfusion_qual_ftof Arnab_gmmfusion_qual_ftof Shefali_gmmfusion_qual_ftof Susmita_gmmfusion_qual_ftof Kasturi_gmmfusion_qual_ftof Pranab_gmmfusion_qual_ftof...
    Akanksha_gmmfusion_qual_ftof Dipjyoti_gmmfusion_qual_ftof Irin_gmmfusion_qual_ftof Nandini_gmmfusion_qual_ftof Nikhil_gmmfusion_qual_ftof Kishore_gmmfusion_qual_ftof...
    ankur_gmmfusion_qual_ftof jivnesh_gmmfusion_qual_ftof koushik_gmmfusion_qual_ftof];

save gmmfusion_qual_ftof_all.mat gmmfusion_qual_ftof;
m2=gmmfusion_qual_ftof;
gmmfusion_mean_quality_ftof=mean(m2);
gmmfusion_std_quality_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_qual_ftof_mean_std.mat gmmfusion_mean_quality_ftof gmmfusion_std_quality_ftof;
%-----------------------------------------------------
%-----
% All
%------
clear;clc;
a=load('source_qual_mtom_mod.mat');
b=load('source_qual_mtof_mod.mat');
c=load('source_qual_ftom_mod.mat');
d=load('source_qual_ftof_mod.mat');
x=[a.m2 b.m2 c.m2 d.m2];
all_source_mean_qual=mean(x);
all_source_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save source_qual_all_mean_std.mat all_source_mean_qual all_source_std_qual;

a=load('dfw_qual_mtom_all.mat');
b=load('dfw_qual_mtof_all.mat');
c=load('dfw_qual_ftom_all.mat');
d=load('dfw_qual_ftof_all.mat');
x=[a.dfw_qual_mtom b.dfw_qual_mtof c.dfw_qual_ftom d.dfw_qual_ftof];
all_dfw_mean_qual=mean(x);
all_dfw_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save dfw_qual_all_mean_std.mat all_dfw_mean_qual all_dfw_std_qual;

a=load('jdgmm_qual_mtom_all.mat');
b=load('jdgmm_qual_mtof_all.mat');
c=load('jdgmm_qual_ftom_all.mat');
d=load('jdgmm_qual_ftof_all.mat');
x=[a.jdgmm_qual_mtom b.jdgmm_qual_mtof c.jdgmm_qual_ftom d.jdgmm_qual_ftof];
all_jdgmm_mean_qual=mean(x);
all_jdgmm_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save jdgmm_qual_all_mean_std.mat all_jdgmm_mean_qual all_jdgmm_std_qual;

a=load('proposed_qual_mtom_all.mat');
b=load('proposed_qual_mtof_all.mat');
c=load('proposed_qual_ftom_all.mat');
d=load('proposed_qual_ftof_all.mat');
x=[a.proposed_qual_mtom b.proposed_qual_mtof c.proposed_qual_ftom d.proposed_qual_ftof];
all_proposed_mean_qual=mean(x);
all_proposed_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save proposed_qual_all_mean_std.mat all_proposed_mean_qual all_proposed_std_qual;

a=load('mfa_qual_mtom_all.mat');
b=load('mfa_qual_mtof_all.mat');
c=load('mfa_qual_ftom_all.mat');
d=load('mfa_qual_ftof_all.mat');
x=[a.mfa_qual_mtom b.mfa_qual_mtof c.mfa_qual_ftom d.mfa_qual_ftof];
all_mfa_mean_qual=mean(x);
all_mfa_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save mfa_qual_all_mean_std.mat all_mfa_mean_qual all_mfa_std_qual;

a=load('mlgmm_qual_mtom_all.mat');
b=load('mlgmm_qual_mtof_all.mat');
c=load('mlgmm_qual_ftom_all.mat');
d=load('mlgmm_qual_ftof_all.mat');
x=[a.mlgmm_qual_mtom b.mlgmm_qual_mtof c.mlgmm_qual_ftom d.mlgmm_qual_ftof];
all_mlgmm_mean_qual=mean(x);
all_mlgmm_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save mlgmm_qual_all_mean_std.mat all_mlgmm_mean_qual all_mlgmm_std_qual;

a=load('proposed1_qual_mtom_all.mat');
b=load('proposed1_qual_mtof_all.mat');
c=load('proposed1_qual_ftom_all.mat');
d=load('proposed1_qual_ftof_all.mat');
x=[a.proposed1_qual_mtom b.proposed1_qual_mtof c.proposed1_qual_ftom d.proposed1_qual_ftof];
all_proposed1_mean_qual=mean(x);
all_proposed1_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save proposed1_qual_all_mean_std.mat all_proposed1_mean_qual all_proposed1_std_qual;

a=load('gmmfusion_qual_mtom_all.mat');
b=load('gmmfusion_qual_mtof_all.mat');
c=load('gmmfusion_qual_ftom_all.mat');
d=load('gmmfusion_qual_ftof_all.mat');
x=[a.gmmfusion_qual_mtom b.gmmfusion_qual_mtof c.gmmfusion_qual_ftom d.gmmfusion_qual_ftof];
all_gmmfusion_mean_qual=mean(x);
all_gmmfusion_std_qual=(1.96.*std(x))./(sqrt(length(x)));

save gmmfusion_qual_all_mean_std.mat all_gmmfusion_mean_qual all_gmmfusion_std_qual;

%-------------------------------------------------------------
%Bar plot

clear;clc;
load source_qual_all_mean_std.mat;load dfw_qual_all_mean_std.mat;load proposed_qual_all_mean_std.mat;load proposed1_qual_all_mean_std.mat;load jdgmm_qual_all_mean_std.mat;load gmmfusion_qual_all_mean_std.mat;load mfa_qual_all_mean_std.mat;load mlgmm_qual_all_mean_std.mat;
load source_qual_mtom_mean_std.mat;load dfw_qual_mtom_mean_std.mat;load proposed_qual_mtom_mean_std.mat;load proposed1_qual_mtom_mean_std.mat;load jdgmm_qual_mtom_mean_std.mat;load gmmfusion_qual_mtom_mean_std.mat;load mfa_qual_mtom_mean_std.mat;load mlgmm_qual_mtom_mean_std.mat;
load source_qual_mtof_mean_std.mat;load dfw_qual_mtof_mean_std.mat;load proposed_qual_mtof_mean_std.mat;load proposed1_qual_mtof_mean_std.mat;load jdgmm_qual_mtof_mean_std.mat;load gmmfusion_qual_mtof_mean_std.mat;load mfa_qual_mtof_mean_std.mat;load mlgmm_qual_mtof_mean_std.mat;
load source_qual_ftom_mean_std.mat;load dfw_qual_ftom_mean_std.mat;load proposed_qual_ftom_mean_std.mat;load proposed1_qual_ftom_mean_std.mat;load jdgmm_qual_ftom_mean_std.mat;load gmmfusion_qual_ftom_mean_std.mat;load mfa_qual_ftom_mean_std.mat;load mlgmm_qual_ftom_mean_std.mat;
load source_qual_ftof_mean_std.mat;load dfw_qual_ftof_mean_std.mat;load proposed_qual_ftof_mean_std.mat;load proposed1_qual_ftof_mean_std.mat;load jdgmm_qual_ftof_mean_std.mat;load gmmfusion_qual_ftof_mean_std.mat;load mfa_qual_ftof_mean_std.mat;load mlgmm_qual_ftof_mean_std.mat;

x=[all_source_mean_qual source_mean_quality_mtom source_mean_quality_mtof source_mean_quality_ftom source_mean_quality_ftof;all_dfw_mean_qual dfw_mean_quality_mtom dfw_mean_quality_mtof dfw_mean_quality_ftom dfw_mean_quality_ftof;all_proposed_mean_qual proposed_mean_quality_mtom proposed_mean_quality_mtof proposed_mean_quality_ftom proposed_mean_quality_ftof;all_proposed1_mean_qual proposed1_mean_quality_mtom proposed1_mean_quality_mtof proposed1_mean_quality_ftom proposed1_mean_quality_ftof;all_jdgmm_mean_qual jdgmm_mean_quality_mtom jdgmm_mean_quality_mtof jdgmm_mean_quality_ftom jdgmm_mean_quality_ftof;all_gmmfusion_mean_qual gmmfusion_mean_quality_mtom gmmfusion_mean_quality_mtof gmmfusion_mean_quality_ftom gmmfusion_mean_quality_ftof;all_mfa_mean_qual mfa_mean_quality_mtom mfa_mean_quality_mtof mfa_mean_quality_ftom mfa_mean_quality_ftof;all_mlgmm_mean_qual mlgmm_mean_quality_mtom mlgmm_mean_quality_mtof mlgmm_mean_quality_ftom mlgmm_mean_quality_ftof];
y=[all_source_std_qual source_std_quality_mtom source_std_quality_mtof source_std_quality_ftom source_std_quality_ftof;all_dfw_std_qual dfw_std_quality_mtom dfw_std_quality_mtof dfw_std_quality_ftom dfw_std_quality_ftof;all_proposed_std_qual proposed_std_quality_mtom proposed_std_quality_mtof proposed_std_quality_ftom proposed_std_quality_ftof;all_proposed1_std_qual proposed1_std_quality_mtom proposed1_std_quality_mtof proposed1_std_quality_ftom proposed1_std_quality_ftof;all_jdgmm_std_qual jdgmm_std_quality_mtom jdgmm_std_quality_mtof jdgmm_std_quality_ftom jdgmm_std_quality_ftof;all_gmmfusion_std_qual gmmfusion_std_quality_mtom gmmfusion_std_quality_mtof gmmfusion_std_quality_ftom gmmfusion_std_quality_ftof;all_mfa_std_qual mfa_std_quality_mtom mfa_std_quality_mtof mfa_std_quality_ftom mfa_std_quality_ftof;all_mlgmm_std_qual mlgmm_std_quality_mtom mlgmm_std_quality_mtof mlgmm_std_quality_ftom mlgmm_std_quality_ftof];
figure(1);
x=x';y=y';
errorb(x,y);
legend('1','2','3','4','5','6','7','8');
hold all;
[hx,hy] = format_ticks(gca,{'All','M->M','M->F','F->M','F->F'});
%--------------------------------------------------------------------------

% Similarity assessment

%------
%M->M
%------
% Source

clear;clc;
load source_simi_mtom_mod.mat m2;
source_mean_similarity_mtom=mean(m2);
source_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save source_simi_mtom_mean_std.mat source_mean_similarity_mtom source_std_similarity_mtom;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_simi_mtom_mod.mat;

dfw_simi_mtom=[m2 ankur_dfw_simi_mtom jivnesh_dfw_simi_mtom koushik_dfw_simi_mtom];
save dfw_simi_mtom_all.mat dfw_simi_mtom;
m2=dfw_simi_mtom;
dfw_mean_similarity_mtom=mean(m2);
dfw_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_simi_mtom_mean_std.mat dfw_mean_similarity_mtom dfw_std_similarity_mtom;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_simi_mtom_mod.mat;

jdgmm_simi_mtom=[m2 ankur_jdgmm_simi_mtom jivnesh_jdgmm_simi_mtom koushik_jdgmm_simi_mtom];
save jdgmm_simi_mtom_all.mat jdgmm_simi_mtom;
m2=jdgmm_simi_mtom;
jdgmm_mean_similarity_mtom=mean(m2);
jdgmm_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_simi_mtom_mean_std.mat jdgmm_mean_similarity_mtom jdgmm_std_similarity_mtom;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_simi_mtom_mod.mat;

proposed_simi_mtom=[m2 ankur_proposed_simi_mtom jivnesh_proposed_simi_mtom koushik_proposed_simi_mtom];
save proposed_simi_mtom_all.mat proposed_simi_mtom;
m2=proposed_simi_mtom;
proposed_mean_similarity_mtom=mean(m2);
proposed_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_simi_mtom_mean_std.mat proposed_mean_similarity_mtom proposed_std_similarity_mtom;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_simi_mtom_mod.mat;

mfa_simi_mtom=[m2 ankur_mfa_simi_mtom jivnesh_mfa_simi_mtom koushik_mfa_simi_mtom];
save mfa_simi_mtom_all.mat mfa_simi_mtom;
m2=mfa_simi_mtom;
mfa_mean_similarity_mtom=mean(m2);
mfa_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_simi_mtom_mean_std.mat mfa_mean_similarity_mtom mfa_std_similarity_mtom;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_simi_mtom_mod.mat;

mlgmm_simi_mtom=[m2 ankur_mlgmm_simi_mtom jivnesh_mlgmm_simi_mtom koushik_mlgmm_simi_mtom];
save mlgmm_simi_mtom_all.mat mlgmm_simi_mtom;
m2=mlgmm_simi_mtom;
mlgmm_mean_similarity_mtom=mean(m2);
mlgmm_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_simi_mtom_mean_std.mat mlgmm_mean_similarity_mtom mlgmm_std_similarity_mtom;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_simi_mtom=[Arif_proposed1_simi_mtom Shefali_proposed1_simi_mtom Susmita_proposed1_simi_mtom Kasturi_proposed1_simi_mtom Pranab_proposed1_simi_mtom Nandini_proposed1_simi_mtom...
    Akanksa_proposed1_simi_mtom Dipjyoti_proposed1_simi_mtom Irin_proposed1_simi_mtom Nikhil_proposed1_simi_mtom Kishore_proposed1_simi_mtom Lily_proposed1_simi_mtom Siri_proposed1_simi_mtom...
    ankur_mfatmod_simi_mtom jivnesh_mfatmod_simi_mtom koushik_mfatmod_simi_mtom];

save proposed1_simi_mtom_all.mat proposed1_simi_mtom;
m2=proposed1_simi_mtom;
proposed1_mean_similarity_mtom=mean(m2);
proposed1_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_simi_mtom_mean_std.mat proposed1_mean_similarity_mtom proposed1_std_similarity_mtom;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_simi_mtom=[Arif_gmmfusion_simi_mtom Arnab_gmmfusion_simi_mtom Shefali_gmmfusion_simi_mtom Susmita_gmmfusion_simi_mtom Kasturi_gmmfusion_simi_mtom Pranab_gmmfusion_simi_mtom...
    Akanksha_gmmfusion_simi_mtom Dipjyoti_gmmfusion_simi_mtom Irin_gmmfusion_simi_mtom Nandini_gmmfusion_simi_mtom Nikhil_gmmfusion_simi_mtom Kishore_gmmfusion_simi_mtom...
    ankur_gmmfusion_simi_mtom jivnesh_gmmfusion_simi_mtom koushik_gmmfusion_simi_mtom];

save gmmfusion_simi_mtom_all.mat gmmfusion_simi_mtom;
m2=gmmfusion_simi_mtom;
gmmfusion_mean_similarity_mtom=mean(m2);
gmmfusion_std_similarity_mtom=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_simi_mtom_mean_std.mat gmmfusion_mean_similarity_mtom gmmfusion_std_similarity_mtom;
%-----------------------------------------------------
%------
%M->F
%------
% Source

clear;clc;
load source_simi_mtof_mod.mat m2;
source_mean_similarity_mtof=mean(m2);
source_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save source_simi_mtof_mean_std.mat source_mean_similarity_mtof source_std_similarity_mtof;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_simi_mtof_mod.mat;

dfw_simi_mtof=[m2 ankur_dfw_simi_mtof jivnesh_dfw_simi_mtof koushik_dfw_simi_mtof];
save dfw_simi_mtof_all.mat dfw_simi_mtof;
m2=dfw_simi_mtof;
dfw_mean_similarity_mtof=mean(m2);
dfw_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_simi_mtof_mean_std.mat dfw_mean_similarity_mtof dfw_std_similarity_mtof;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_simi_mtof_mod.mat;

jdgmm_simi_mtof=[m2 ankur_jdgmm_simi_mtof jivnesh_jdgmm_simi_mtof koushik_jdgmm_simi_mtof];
save jdgmm_simi_mtof_all.mat jdgmm_simi_mtof;
m2=jdgmm_simi_mtof;
jdgmm_mean_similarity_mtof=mean(m2);
jdgmm_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_simi_mtof_mean_std.mat jdgmm_mean_similarity_mtof jdgmm_std_similarity_mtof;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_simi_mtof_mod.mat;

proposed_simi_mtof=[m2 ankur_proposed_simi_mtof jivnesh_proposed_simi_mtof koushik_proposed_simi_mtof];
save proposed_simi_mtof_all.mat proposed_simi_mtof;
m2=proposed_simi_mtof;
proposed_mean_similarity_mtof=mean(m2);
proposed_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_simi_mtof_mean_std.mat proposed_mean_similarity_mtof proposed_std_similarity_mtof;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_simi_mtof_mod.mat;

mfa_simi_mtof=[m2 ankur_mfa_simi_mtof jivnesh_mfa_simi_mtof koushik_mfa_simi_mtof];
save mfa_simi_mtof_all.mat mfa_simi_mtof;
m2=mfa_simi_mtof;
mfa_mean_similarity_mtof=mean(m2);
mfa_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_simi_mtof_mean_std.mat mfa_mean_similarity_mtof mfa_std_similarity_mtof;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_simi_mtof_mod.mat;

mlgmm_simi_mtof=[m2 ankur_mlgmm_simi_mtof jivnesh_mlgmm_simi_mtof koushik_mlgmm_simi_mtof];
save mlgmm_simi_mtof_all.mat mlgmm_simi_mtof;
m2=mlgmm_simi_mtof;
mlgmm_mean_similarity_mtof=mean(m2);
mlgmm_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_simi_mtof_mean_std.mat mlgmm_mean_similarity_mtof mlgmm_std_similarity_mtof;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_simi_mtof=[Arif_proposed1_simi_mtof Shefali_proposed1_simi_mtof Susmita_proposed1_simi_mtof Kasturi_proposed1_simi_mtof Pranab_proposed1_simi_mtof Nandini_proposed1_simi_mtof...
    Akanksa_proposed1_simi_mtof Dipjyoti_proposed1_simi_mtof Irin_proposed1_simi_mtof Nikhil_proposed1_simi_mtof Kishore_proposed1_simi_mtof Lily_proposed1_simi_mtof Siri_proposed1_simi_mtof...
    ankur_mfatmod_simi_mtof jivnesh_mfatmod_simi_mtof koushik_mfatmod_simi_mtof];

save proposed1_simi_mtof_all.mat proposed1_simi_mtof;
m2=proposed1_simi_mtof;
proposed1_mean_similarity_mtof=mean(m2);
proposed1_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_simi_mtof_mean_std.mat proposed1_mean_similarity_mtof proposed1_std_similarity_mtof;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_simi_mtof=[Arif_gmmfusion_simi_mtof Arnab_gmmfusion_simi_mtof Shefali_gmmfusion_simi_mtof Susmita_gmmfusion_simi_mtof Kasturi_gmmfusion_simi_mtof Pranab_gmmfusion_simi_mtof...
    Akanksha_gmmfusion_simi_mtof Dipjyoti_gmmfusion_simi_mtof Irin_gmmfusion_simi_mtof Nandini_gmmfusion_simi_mtof Nikhil_gmmfusion_simi_mtof Kishore_gmmfusion_simi_mtof...
    ankur_gmmfusion_simi_mtof jivnesh_gmmfusion_simi_mtof koushik_gmmfusion_simi_mtof];

save gmmfusion_simi_mtof_all.mat gmmfusion_simi_mtof;
m2=gmmfusion_simi_mtof;
gmmfusion_mean_similarity_mtof=mean(m2);
gmmfusion_std_similarity_mtof=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_simi_mtof_mean_std.mat gmmfusion_mean_similarity_mtof gmmfusion_std_similarity_mtof;
%-----------------------------------------------------

%------
%F->M
%------
% Source

clear;clc;
load source_simi_ftom_mod.mat m2;
source_mean_similarity_ftom=mean(m2);
source_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save source_simi_ftom_mean_std.mat source_mean_similarity_ftom source_std_similarity_ftom;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_simi_ftom_mod.mat;

dfw_simi_ftom=[m2 ankur_dfw_simi_ftom jivnesh_dfw_simi_ftom koushik_dfw_simi_ftom];
save dfw_simi_ftom_all.mat dfw_simi_ftom;
m2=dfw_simi_ftom;
dfw_mean_similarity_ftom=mean(m2);
dfw_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_simi_ftom_mean_std.mat dfw_mean_similarity_ftom dfw_std_similarity_ftom;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_simi_ftom_mod.mat;

jdgmm_simi_ftom=[m2 ankur_jdgmm_simi_ftom jivnesh_jdgmm_simi_ftom koushik_jdgmm_simi_ftom];
save jdgmm_simi_ftom_all.mat jdgmm_simi_ftom;
m2=jdgmm_simi_ftom;
jdgmm_mean_similarity_ftom=mean(m2);
jdgmm_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_simi_ftom_mean_std.mat jdgmm_mean_similarity_ftom jdgmm_std_similarity_ftom;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_simi_ftom_mod.mat;

proposed_simi_ftom=[m2 ankur_proposed_simi_ftom jivnesh_proposed_simi_ftom koushik_proposed_simi_ftom];
save proposed_simi_ftom_all.mat proposed_simi_ftom;
m2=proposed_simi_ftom;
proposed_mean_similarity_ftom=mean(m2);
proposed_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_simi_ftom_mean_std.mat proposed_mean_similarity_ftom proposed_std_similarity_ftom;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_simi_ftom_mod.mat;

mfa_simi_ftom=[m2 ankur_mfa_simi_ftom jivnesh_mfa_simi_ftom koushik_mfa_simi_ftom];
save mfa_simi_ftom_all.mat mfa_simi_ftom;
m2=mfa_simi_ftom;
mfa_mean_similarity_ftom=mean(m2);
mfa_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_simi_ftom_mean_std.mat mfa_mean_similarity_ftom mfa_std_similarity_ftom;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_simi_ftom_mod.mat;

mlgmm_simi_ftom=[m2 ankur_mlgmm_simi_ftom jivnesh_mlgmm_simi_ftom koushik_mlgmm_simi_ftom];
save mlgmm_simi_ftom_all.mat mlgmm_simi_ftom;
m2=mlgmm_simi_ftom;
mlgmm_mean_similarity_ftom=mean(m2);
mlgmm_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_simi_ftom_mean_std.mat mlgmm_mean_similarity_ftom mlgmm_std_similarity_ftom;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_simi_ftom=[Arif_proposed1_simi_ftom Shefali_proposed1_simi_ftom Susmita_proposed1_simi_ftom Kasturi_proposed1_simi_ftom Pranab_proposed1_simi_ftom Nandini_proposed1_simi_ftom...
    Akanksa_proposed1_simi_ftom Dipjyoti_proposed1_simi_ftom Irin_proposed1_simi_ftom Nikhil_proposed1_simi_ftom Kishore_proposed1_simi_ftom Lily_proposed1_simi_ftom Siri_proposed1_simi_ftom...
    ankur_mfatmod_simi_ftom jivnesh_mfatmod_simi_ftom koushik_mfatmod_simi_ftom];

save proposed1_simi_ftom_all.mat proposed1_simi_ftom;
m2=proposed1_simi_ftom;
proposed1_mean_similarity_ftom=mean(m2);
proposed1_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_simi_ftom_mean_std.mat proposed1_mean_similarity_ftom proposed1_std_similarity_ftom;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_simi_ftom=[Arif_gmmfusion_simi_ftom Arnab_gmmfusion_simi_ftom Shefali_gmmfusion_simi_ftom Susmita_gmmfusion_simi_ftom Kasturi_gmmfusion_simi_ftom Pranab_gmmfusion_simi_ftom...
    Akanksha_gmmfusion_simi_ftom Dipjyoti_gmmfusion_simi_ftom Irin_gmmfusion_simi_ftom Nandini_gmmfusion_simi_ftom Nikhil_gmmfusion_simi_ftom Kishore_gmmfusion_simi_ftom...
    ankur_gmmfusion_simi_ftom jivnesh_gmmfusion_simi_ftom koushik_gmmfusion_simi_ftom];

save gmmfusion_simi_ftom_all.mat gmmfusion_simi_ftom;
m2=gmmfusion_simi_ftom;
gmmfusion_mean_similarity_ftom=mean(m2);
gmmfusion_std_similarity_ftom=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_simi_ftom_mean_std.mat gmmfusion_mean_similarity_ftom gmmfusion_std_similarity_ftom;
%-----------------------------------------------------

%------
%F->F
%------
% Source

clear;clc;
load source_simi_ftof_mod.mat m2;
source_mean_similarity_ftof=mean(m2);
source_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save source_simi_ftof_mean_std.mat source_mean_similarity_ftof source_std_similarity_ftof;

%------------------------------------------
%DFW

load ankur_dfw_qual_simi.mat;
load jivnesh_dfw_qual_simi.mat;
load koushik_dfw_qual_simi.mat;
load dfw_simi_ftof_mod.mat;

dfw_simi_ftof=[m2 ankur_dfw_simi_ftof jivnesh_dfw_simi_ftof koushik_dfw_simi_ftof];
save dfw_simi_ftof_all.mat dfw_simi_ftof;
m2=dfw_simi_ftof;
dfw_mean_similarity_ftof=mean(m2);
dfw_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save dfw_simi_ftof_mean_std.mat dfw_mean_similarity_ftof dfw_std_similarity_ftof;
%----------------------------------------------------
%JDGMM

load ankur_jdgmm_qual_simi.mat;
load jivnesh_jdgmm_qual_simi.mat;
load koushik_jdgmm_qual_simi.mat;
load gmm_simi_ftof_mod.mat;

jdgmm_simi_ftof=[m2 ankur_jdgmm_simi_ftof jivnesh_jdgmm_simi_ftof koushik_jdgmm_simi_ftof];
save jdgmm_simi_ftof_all.mat jdgmm_simi_ftof;
m2=jdgmm_simi_ftof;
jdgmm_mean_similarity_ftof=mean(m2);
jdgmm_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save jdgmm_simi_ftof_mean_std.mat jdgmm_mean_similarity_ftof jdgmm_std_similarity_ftof;
%----------------------------------------------------
% Proposed

load ankur_proposed_qual_simi.mat;
load jivnesh_proposed_qual_simi.mat;
load koushik_proposed_qual_simi.mat;
load hybrid_simi_ftof_mod.mat;

proposed_simi_ftof=[m2 ankur_proposed_simi_ftof jivnesh_proposed_simi_ftof koushik_proposed_simi_ftof];
save proposed_simi_ftof_all.mat proposed_simi_ftof;
m2=proposed_simi_ftof;
proposed_mean_similarity_ftof=mean(m2);
proposed_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed_simi_ftof_mean_std.mat proposed_mean_similarity_ftof proposed_std_similarity_ftof;
%--------------------------------------------------
% MFA

load ankur_mfa_qual_simi.mat;
load jivnesh_mfa_qual_simi.mat;
load koushik_mfa_qual_simi.mat;
load mfa_simi_ftof_mod.mat;

mfa_simi_ftof=[m2 ankur_mfa_simi_ftof jivnesh_mfa_simi_ftof koushik_mfa_simi_ftof];
save mfa_simi_ftof_all.mat mfa_simi_ftof;
m2=mfa_simi_ftof;
mfa_mean_similarity_ftof=mean(m2);
mfa_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save mfa_simi_ftof_mean_std.mat mfa_mean_similarity_ftof mfa_std_similarity_ftof;
%--------------------------------------------------
%MLGMM

load ankur_mlgmm_qual_simi.mat;
load jivnesh_mlgmm_qual_simi.mat;
load koushik_mlgmm_qual_simi.mat;
load mlgmm_simi_ftof_mod.mat;

mlgmm_simi_ftof=[m2 ankur_mlgmm_simi_ftof jivnesh_mlgmm_simi_ftof koushik_mlgmm_simi_ftof];
save mlgmm_simi_ftof_all.mat mlgmm_simi_ftof;
m2=mlgmm_simi_ftof;
mlgmm_mean_similarity_ftof=mean(m2);
mlgmm_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save mlgmm_simi_ftof_mean_std.mat mlgmm_mean_similarity_ftof mlgmm_std_similarity_ftof;
%----------------------------------------------------
%Proposed1

load Arif_proposed1_qual_simi.mat;
load Shefali_proposed1_qual_simi.mat;
load Susmita_proposed1_qual_simi.mat;
load Kasturi_proposed1_qual_simi.mat;
load Pranab_proposed1_qual_simi.mat;
load Nandini_proposed1_qual_simi.mat;
load Akanksa_proposed1_qual_simi.mat;
load Dipjyoti_proposed1_qual_simi.mat;
load Irin_proposed1_qual_simi.mat;
load Nikhil_proposed1_qual_simi.mat;
load Kishore_proposed1_qual_simi.mat;
load Lily_proposed1_qual_simi.mat;
load Siri_proposed1_qual_simi.mat;
load ankur_mfatmod_qual_simi.mat;
load jivnesh_mfatmod_qual_simi.mat;
load koushik_mfatmod_qual_simi.mat;

proposed1_simi_ftof=[Arif_proposed1_simi_ftof Shefali_proposed1_simi_ftof Susmita_proposed1_simi_ftof Kasturi_proposed1_simi_ftof Pranab_proposed1_simi_ftof Nandini_proposed1_simi_ftof...
    Akanksa_proposed1_simi_ftof Dipjyoti_proposed1_simi_ftof Irin_proposed1_simi_ftof Nikhil_proposed1_simi_ftof Kishore_proposed1_simi_ftof Lily_proposed1_simi_ftof Siri_proposed1_simi_ftof...
    ankur_mfatmod_simi_ftof jivnesh_mfatmod_simi_ftof koushik_mfatmod_simi_ftof];

save proposed1_simi_ftof_all.mat proposed1_simi_ftof;
m2=proposed1_simi_ftof;
proposed1_mean_similarity_ftof=mean(m2);
proposed1_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save proposed1_simi_ftof_mean_std.mat proposed1_mean_similarity_ftof proposed1_std_similarity_ftof;
%-----------------------------------------------------
%GMMfusion

load Akanksha_gmmfusion_qual_simi.mat;
load Arif_gmmfusion_qual_simi.mat;
load Arnab_gmmfusion_qual_simi.mat;
load Shefali_gmmfusion_qual_simi.mat;
load Susmita_gmmfusion_qual_simi.mat;
load Kasturi_gmmfusion_qual_simi.mat;
load Pranab_gmmfusion_qual_simi.mat;
load Dipjyoti_gmmfusion_qual_simi.mat;
load Irin_gmmfusion_qual_simi.mat;
load Nandini_gmmfusion_qual_simi.mat;
load Nikhil_gmmfusion_qual_simi.mat;
load Kishore_gmmfusion_qual_simi.mat;
load ankur_gmmfusion_qual_simi.mat;
load jivnesh_gmmfusion_qual_simi.mat;
load koushik_gmmfusion_qual_simi.mat;

gmmfusion_simi_ftof=[Arif_gmmfusion_simi_ftof Arnab_gmmfusion_simi_ftof Shefali_gmmfusion_simi_ftof Susmita_gmmfusion_simi_ftof Kasturi_gmmfusion_simi_ftof Pranab_gmmfusion_simi_ftof...
    Akanksha_gmmfusion_simi_ftof Dipjyoti_gmmfusion_simi_ftof Irin_gmmfusion_simi_ftof Nandini_gmmfusion_simi_ftof Nikhil_gmmfusion_simi_ftof Kishore_gmmfusion_simi_ftof...
    ankur_gmmfusion_simi_ftof jivnesh_gmmfusion_simi_ftof koushik_gmmfusion_simi_ftof];

save gmmfusion_simi_ftof_all.mat gmmfusion_simi_ftof;
m2=gmmfusion_simi_ftof;
gmmfusion_mean_similarity_ftof=mean(m2);
gmmfusion_std_similarity_ftof=(1.96.*std(m2))./(sqrt(length(m2)));

save gmmfusion_simi_ftof_mean_std.mat gmmfusion_mean_similarity_ftof gmmfusion_std_similarity_ftof;
%-----------------------------------------------------
%-----
% All
%------
clear;clc;
a=load('source_simi_mtom_mod.mat');
b=load('source_simi_mtof_mod.mat');
c=load('source_simi_ftom_mod.mat');
d=load('source_simi_ftof_mod.mat');
x=[a.m2 b.m2 c.m2 d.m2];
all_source_mean_simi=mean(x);
all_source_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save source_simi_all_mean_std.mat all_source_mean_simi all_source_std_simi;

a=load('dfw_simi_mtom_all.mat');
b=load('dfw_simi_mtof_all.mat');
c=load('dfw_simi_ftom_all.mat');
d=load('dfw_simi_ftof_all.mat');
x=[a.dfw_simi_mtom b.dfw_simi_mtof c.dfw_simi_ftom d.dfw_simi_ftof];
all_dfw_mean_simi=mean(x);
all_dfw_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save dfw_simi_all_mean_std.mat all_dfw_mean_simi all_dfw_std_simi;

a=load('jdgmm_simi_mtom_all.mat');
b=load('jdgmm_simi_mtof_all.mat');
c=load('jdgmm_simi_ftom_all.mat');
d=load('jdgmm_simi_ftof_all.mat');
x=[a.jdgmm_simi_mtom b.jdgmm_simi_mtof c.jdgmm_simi_ftom d.jdgmm_simi_ftof];
all_jdgmm_mean_simi=mean(x);
all_jdgmm_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save jdgmm_simi_all_mean_std.mat all_jdgmm_mean_simi all_jdgmm_std_simi;

a=load('proposed_simi_mtom_all.mat');
b=load('proposed_simi_mtof_all.mat');
c=load('proposed_simi_ftom_all.mat');
d=load('proposed_simi_ftof_all.mat');
x=[a.proposed_simi_mtom b.proposed_simi_mtof c.proposed_simi_ftom d.proposed_simi_ftof];
all_proposed_mean_simi=mean(x);
all_proposed_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save proposed_simi_all_mean_std.mat all_proposed_mean_simi all_proposed_std_simi;

a=load('mfa_simi_mtom_all.mat');
b=load('mfa_simi_mtof_all.mat');
c=load('mfa_simi_ftom_all.mat');
d=load('mfa_simi_ftof_all.mat');
x=[a.mfa_simi_mtom b.mfa_simi_mtof c.mfa_simi_ftom d.mfa_simi_ftof];
all_mfa_mean_simi=mean(x);
all_mfa_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save mfa_simi_all_mean_std.mat all_mfa_mean_simi all_mfa_std_simi;

a=load('mlgmm_simi_mtom_all.mat');
b=load('mlgmm_simi_mtof_all.mat');
c=load('mlgmm_simi_ftom_all.mat');
d=load('mlgmm_simi_ftof_all.mat');
x=[a.mlgmm_simi_mtom b.mlgmm_simi_mtof c.mlgmm_simi_ftom d.mlgmm_simi_ftof];
all_mlgmm_mean_simi=mean(x);
all_mlgmm_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save mlgmm_simi_all_mean_std.mat all_mlgmm_mean_simi all_mlgmm_std_simi;

a=load('proposed1_simi_mtom_all.mat');
b=load('proposed1_simi_mtof_all.mat');
c=load('proposed1_simi_ftom_all.mat');
d=load('proposed1_simi_ftof_all.mat');
x=[a.proposed1_simi_mtom b.proposed1_simi_mtof c.proposed1_simi_ftom d.proposed1_simi_ftof];
all_proposed1_mean_simi=mean(x);
all_proposed1_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save proposed1_simi_all_mean_std.mat all_proposed1_mean_simi all_proposed1_std_simi;

a=load('gmmfusion_simi_mtom_all.mat');
b=load('gmmfusion_simi_mtof_all.mat');
c=load('gmmfusion_simi_ftom_all.mat');
d=load('gmmfusion_simi_ftof_all.mat');
x=[a.gmmfusion_simi_mtom b.gmmfusion_simi_mtof c.gmmfusion_simi_ftom d.gmmfusion_simi_ftof];
all_gmmfusion_mean_simi=mean(x);
all_gmmfusion_std_simi=(1.96.*std(x))./(sqrt(length(x)));

save gmmfusion_simi_all_mean_std.mat all_gmmfusion_mean_simi all_gmmfusion_std_simi;

%-------------------------------------------------------------
%Bar plot

clear;clc;
load source_simi_all_mean_std.mat;load dfw_simi_all_mean_std.mat;load proposed_simi_all_mean_std.mat;load proposed1_simi_all_mean_std.mat;load jdgmm_simi_all_mean_std.mat;load gmmfusion_simi_all_mean_std.mat;load mfa_simi_all_mean_std.mat;load mlgmm_simi_all_mean_std.mat;
load source_simi_mtom_mean_std.mat;load dfw_simi_mtom_mean_std.mat;load proposed_simi_mtom_mean_std.mat;load proposed1_simi_mtom_mean_std.mat;load jdgmm_simi_mtom_mean_std.mat;load gmmfusion_simi_mtom_mean_std.mat;load mfa_simi_mtom_mean_std.mat;load mlgmm_simi_mtom_mean_std.mat;
load source_simi_mtof_mean_std.mat;load dfw_simi_mtof_mean_std.mat;load proposed_simi_mtof_mean_std.mat;load proposed1_simi_mtof_mean_std.mat;load jdgmm_simi_mtof_mean_std.mat;load gmmfusion_simi_mtof_mean_std.mat;load mfa_simi_mtof_mean_std.mat;load mlgmm_simi_mtof_mean_std.mat;
load source_simi_ftom_mean_std.mat;load dfw_simi_ftom_mean_std.mat;load proposed_simi_ftom_mean_std.mat;load proposed1_simi_ftom_mean_std.mat;load jdgmm_simi_ftom_mean_std.mat;load gmmfusion_simi_ftom_mean_std.mat;load mfa_simi_ftom_mean_std.mat;load mlgmm_simi_ftom_mean_std.mat;
load source_simi_ftof_mean_std.mat;load dfw_simi_ftof_mean_std.mat;load proposed_simi_ftof_mean_std.mat;load proposed1_simi_ftof_mean_std.mat;load jdgmm_simi_ftof_mean_std.mat;load gmmfusion_simi_ftof_mean_std.mat;load mfa_simi_ftof_mean_std.mat;load mlgmm_simi_ftof_mean_std.mat;

x=[all_source_mean_simi source_mean_similarity_mtom source_mean_similarity_mtof source_mean_similarity_ftom source_mean_similarity_ftof;all_dfw_mean_simi dfw_mean_similarity_mtom dfw_mean_similarity_mtof dfw_mean_similarity_ftom dfw_mean_similarity_ftof;all_proposed_mean_simi proposed_mean_similarity_mtom proposed_mean_similarity_mtof proposed_mean_similarity_ftom proposed_mean_similarity_ftof;all_proposed1_mean_simi proposed1_mean_similarity_mtom proposed1_mean_similarity_mtof proposed1_mean_similarity_ftom proposed1_mean_similarity_ftof;all_jdgmm_mean_simi jdgmm_mean_similarity_mtom jdgmm_mean_similarity_mtof jdgmm_mean_similarity_ftom jdgmm_mean_similarity_ftof;all_gmmfusion_mean_simi gmmfusion_mean_similarity_mtom gmmfusion_mean_similarity_mtof gmmfusion_mean_similarity_ftom gmmfusion_mean_similarity_ftof;all_mfa_mean_simi mfa_mean_similarity_mtom mfa_mean_similarity_mtof mfa_mean_similarity_ftom mfa_mean_similarity_ftof;all_mlgmm_mean_simi mlgmm_mean_similarity_mtom mlgmm_mean_similarity_mtof mlgmm_mean_similarity_ftom mlgmm_mean_similarity_ftof];
y=[all_source_std_simi source_std_similarity_mtom source_std_similarity_mtof source_std_similarity_ftom source_std_similarity_ftof;all_dfw_std_simi dfw_std_similarity_mtom dfw_std_similarity_mtof dfw_std_similarity_ftom dfw_std_similarity_ftof;all_proposed_std_simi proposed_std_similarity_mtom proposed_std_similarity_mtof proposed_std_similarity_ftom proposed_std_similarity_ftof;all_proposed1_std_simi proposed1_std_similarity_mtom proposed1_std_similarity_mtof proposed1_std_similarity_ftom proposed1_std_similarity_ftof;all_jdgmm_std_simi jdgmm_std_similarity_mtom jdgmm_std_similarity_mtof jdgmm_std_similarity_ftom jdgmm_std_similarity_ftof;all_gmmfusion_std_simi gmmfusion_std_similarity_mtom gmmfusion_std_similarity_mtof gmmfusion_std_similarity_ftom gmmfusion_std_similarity_ftof;all_mfa_std_simi mfa_std_similarity_mtom mfa_std_similarity_mtof mfa_std_similarity_ftom mfa_std_similarity_ftof;all_mlgmm_std_simi mlgmm_std_similarity_mtom mlgmm_std_similarity_mtof mlgmm_std_similarity_ftom mlgmm_std_similarity_ftof];
figure(2);
x=x';y=y';
errorb(x,y);
legend('1','2','3','4','5','6','7','8');
hold all;
[hx,hy] = format_ticks(gca,{'All','M->M','M->F','F->M','F->F'});
%--------------------------------------------------------------------------

% 
% % Box plot
% 
clear;clc;
a=load('source_qual_mtom_mod.mat');
b=load('source_qual_mtof_mod.mat');
c=load('source_qual_ftom_mod.mat');
d=load('source_qual_ftof_mod.mat');
all_source_qual=[a.m2 b.m2 c.m2 d.m2];
a=load('dfw_qual_mtom_all.mat');
b=load('dfw_qual_mtof_all.mat');
c=load('dfw_qual_ftom_all.mat');
d=load('dfw_qual_ftof_all.mat');
all_dfw_qual=[a.dfw_qual_mtom b.dfw_qual_mtof c.dfw_qual_ftom d.dfw_qual_ftof];
a=load('proposed_qual_mtom_all.mat');
b=load('proposed_qual_mtof_all.mat');
c=load('proposed_qual_ftom_all.mat');
d=load('proposed_qual_ftof_all.mat');
all_proposed_qual=[a.proposed_qual_mtom b.proposed_qual_mtof c.proposed_qual_ftom d.proposed_qual_ftof];
a=load('jdgmm_qual_mtom_all.mat');
b=load('jdgmm_qual_mtof_all.mat');
c=load('jdgmm_qual_ftom_all.mat');
d=load('jdgmm_qual_ftof_all.mat');
all_jdgmm_qual=[a.jdgmm_qual_mtom b.jdgmm_qual_mtof c.jdgmm_qual_ftom d.jdgmm_qual_ftof];
a=load('mfa_qual_mtom_all.mat');
b=load('mfa_qual_mtof_all.mat');
c=load('mfa_qual_ftom_all.mat');
d=load('mfa_qual_ftof_all.mat');
all_mfa_qual=[a.mfa_qual_mtom b.mfa_qual_mtof c.mfa_qual_ftom d.mfa_qual_ftof];
a=load('mlgmm_qual_mtom_all.mat');
b=load('mlgmm_qual_mtof_all.mat');
c=load('mlgmm_qual_ftom_all.mat');
d=load('mlgmm_qual_ftof_all.mat');
all_mlgmm_qual=[a.mlgmm_qual_mtom b.mlgmm_qual_mtof c.mlgmm_qual_ftom d.mlgmm_qual_ftof];
a=load('source_simi_mtom_mod.mat');
b=load('source_simi_mtof_mod.mat');
c=load('source_simi_ftom_mod.mat');
d=load('source_simi_ftof_mod.mat');
all_source_simi=[a.m2 b.m2 c.m2 d.m2];
a=load('dfw_simi_mtom_all.mat');
b=load('dfw_simi_mtof_all.mat');
c=load('dfw_simi_ftom_all.mat');
d=load('dfw_simi_ftof_all.mat');
all_dfw_simi=[a.dfw_simi_mtom b.dfw_simi_mtof c.dfw_simi_ftom d.dfw_simi_ftof];
a=load('proposed_simi_mtom_all.mat');
b=load('proposed_simi_mtof_all.mat');
c=load('proposed_simi_ftom_all.mat');
d=load('proposed_simi_ftof_all.mat');
all_proposed_simi=[a.proposed_simi_mtom b.proposed_simi_mtof c.proposed_simi_ftom d.proposed_simi_ftof];
a=load('jdgmm_simi_mtom_all.mat');
b=load('jdgmm_simi_mtof_all.mat');
c=load('jdgmm_simi_ftom_all.mat');
d=load('jdgmm_simi_ftof_all.mat');
all_jdgmm_simi=[a.jdgmm_simi_mtom b.jdgmm_simi_mtof c.jdgmm_simi_ftom d.jdgmm_simi_ftof];
a=load('mfa_simi_mtom_all.mat');
b=load('mfa_simi_mtof_all.mat');
c=load('mfa_simi_ftom_all.mat');
d=load('mfa_simi_ftof_all.mat');
all_mfa_simi=[a.mfa_simi_mtom b.mfa_simi_mtof c.mfa_simi_ftom d.mfa_simi_ftof];
a=load('mlgmm_simi_mtom_all.mat');
b=load('mlgmm_simi_mtof_all.mat');
c=load('mlgmm_simi_ftom_all.mat');
d=load('mlgmm_simi_ftof_all.mat');
all_mlgmm_simi=[a.mlgmm_simi_mtom b.mlgmm_simi_mtof c.mlgmm_simi_ftom d.mlgmm_simi_ftof];
figure(3);
box_matrix=[all_dfw_qual' all_proposed_qual' all_jdgmm_qual' all_mfa_qual' all_mlgmm_qual'];
lab=cell(5,1);
%lab{1}='Source';
lab{1}='DFW';lab{2}='Proposed';lab{3}='JDGMM';lab{4}='MFA';lab{5}='ML-GMM';
%fig=gcf;
boxplot(box_matrix,lab,'outliersize',14);
%set(findall(fig,'-property','FontSize'),'FontSize',20);
%set(findall(fig,'-property','FontWeight'),'FontWeight','bold');
% set(findall(fig,'-property','Position','String','1'),'String','1','Position',[45.434375 -35.5 0]);
% set(findall(fig,'-property','Position','String','2'),'String','2','Position',[136.303125 -35.5 0]);
% set(findall(fig,'-property','Position','String','3'),'String','3','Position',[227.171875 -35.5 0]);
% set(findall(fig,'-property','Position','String','4'),'String','4','Position',[318.040625 -35.5 0]);
% set(findall(fig,'-property','Position','String','5'),'String','5','Position',[408.909375 -35.5 0]);
% set(findall(fig,'-property','Position','String','6'),'String','6','Position',[499.778125 -35.5 0]);
set(findobj(gca,'type','line'),'linew',2)
h = findobj(gca,'tag','Median');
set(h,'linewidth',4);
set(h,'Color',[0 0 0])

figure(4);
box_matrix=[all_dfw_simi' all_proposed_simi' all_jdgmm_simi' all_mfa_simi' all_mlgmm_simi'];
lab=cell(5,1);
%lab{1}='Source';
lab{1}='DFW';lab{2}='Proposed';lab{3}='JDGMM';lab{4}='MFA';lab{5}='ML-GMM';
%fig=gcf;
boxplot(box_matrix,lab,'outliersize',14);
% set(findall(fig,'-property','FontSize'),'FontSize',20);
% set(findall(fig,'-property','FontWeight'),'FontWeight','bold');
set(findobj(gca,'type','line'),'linew',2)
h = findobj(gca,'tag','Median');
set(h,'linewidth',4);
set(h,'Color',[0 0 0])

