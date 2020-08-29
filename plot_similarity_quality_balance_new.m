clear;clc;
load source_qual_all_mean_std.mat;load dfw_qual_all_mean_std.mat;load proposed_qual_all_mean_std.mat;load proposed1_qual_all_mean_std.mat;load jdgmm_qual_all_mean_std.mat;load gmmfusion_qual_all_mean_std.mat;load mfa_qual_all_mean_std.mat;load mlgmm_qual_all_mean_std.mat;
load source_qual_mtom_mean_std.mat;load dfw_qual_mtom_mean_std.mat;load proposed_qual_mtom_mean_std.mat;load proposed1_qual_mtom_mean_std.mat;load jdgmm_qual_mtom_mean_std.mat;load gmmfusion_qual_mtom_mean_std.mat;load mfa_qual_mtom_mean_std.mat;load mlgmm_qual_mtom_mean_std.mat;
load source_qual_mtof_mean_std.mat;load dfw_qual_mtof_mean_std.mat;load proposed_qual_mtof_mean_std.mat;load proposed1_qual_mtof_mean_std.mat;load jdgmm_qual_mtof_mean_std.mat;load gmmfusion_qual_mtof_mean_std.mat;load mfa_qual_mtof_mean_std.mat;load mlgmm_qual_mtof_mean_std.mat;
load source_qual_ftom_mean_std.mat;load dfw_qual_ftom_mean_std.mat;load proposed_qual_ftom_mean_std.mat;load proposed1_qual_ftom_mean_std.mat;load jdgmm_qual_ftom_mean_std.mat;load gmmfusion_qual_ftom_mean_std.mat;load mfa_qual_ftom_mean_std.mat;load mlgmm_qual_ftom_mean_std.mat;
load source_qual_ftof_mean_std.mat;load dfw_qual_ftof_mean_std.mat;load proposed_qual_ftof_mean_std.mat;load proposed1_qual_ftof_mean_std.mat;load jdgmm_qual_ftof_mean_std.mat;load gmmfusion_qual_ftof_mean_std.mat;load mfa_qual_ftof_mean_std.mat;load mlgmm_qual_ftof_mean_std.mat;

qual=[all_source_mean_qual source_mean_quality_mtom source_mean_quality_mtof source_mean_quality_ftom source_mean_quality_ftof;all_dfw_mean_qual dfw_mean_quality_mtom dfw_mean_quality_mtof dfw_mean_quality_ftom dfw_mean_quality_ftof;all_proposed_mean_qual proposed_mean_quality_mtom proposed_mean_quality_mtof proposed_mean_quality_ftom proposed_mean_quality_ftof;all_proposed1_mean_qual proposed1_mean_quality_mtom proposed1_mean_quality_mtof proposed1_mean_quality_ftom proposed1_mean_quality_ftof;all_jdgmm_mean_qual jdgmm_mean_quality_mtom jdgmm_mean_quality_mtof jdgmm_mean_quality_ftom jdgmm_mean_quality_ftof;all_gmmfusion_mean_qual gmmfusion_mean_quality_mtom gmmfusion_mean_quality_mtof gmmfusion_mean_quality_ftom gmmfusion_mean_quality_ftof;all_mfa_mean_qual mfa_mean_quality_mtom mfa_mean_quality_mtof mfa_mean_quality_ftom mfa_mean_quality_ftof;all_mlgmm_mean_qual mlgmm_mean_quality_mtom mlgmm_mean_quality_mtof mlgmm_mean_quality_ftom mlgmm_mean_quality_ftof];

load source_simi_all_mean_std.mat;load dfw_simi_all_mean_std.mat;load proposed_simi_all_mean_std.mat;load proposed1_simi_all_mean_std.mat;load jdgmm_simi_all_mean_std.mat;load gmmfusion_simi_all_mean_std.mat;load mfa_simi_all_mean_std.mat;load mlgmm_simi_all_mean_std.mat;
load source_simi_mtom_mean_std.mat;load dfw_simi_mtom_mean_std.mat;load proposed_simi_mtom_mean_std.mat;load proposed1_simi_mtom_mean_std.mat;load jdgmm_simi_mtom_mean_std.mat;load gmmfusion_simi_mtom_mean_std.mat;load mfa_simi_mtom_mean_std.mat;load mlgmm_simi_mtom_mean_std.mat;
load source_simi_mtof_mean_std.mat;load dfw_simi_mtof_mean_std.mat;load proposed_simi_mtof_mean_std.mat;load proposed1_simi_mtof_mean_std.mat;load jdgmm_simi_mtof_mean_std.mat;load gmmfusion_simi_mtof_mean_std.mat;load mfa_simi_mtof_mean_std.mat;load mlgmm_simi_mtof_mean_std.mat;
load source_simi_ftom_mean_std.mat;load dfw_simi_ftom_mean_std.mat;load proposed_simi_ftom_mean_std.mat;load proposed1_simi_ftom_mean_std.mat;load jdgmm_simi_ftom_mean_std.mat;load gmmfusion_simi_ftom_mean_std.mat;load mfa_simi_ftom_mean_std.mat;load mlgmm_simi_ftom_mean_std.mat;
load source_simi_ftof_mean_std.mat;load dfw_simi_ftof_mean_std.mat;load proposed_simi_ftof_mean_std.mat;load proposed1_simi_ftof_mean_std.mat;load jdgmm_simi_ftof_mean_std.mat;load gmmfusion_simi_ftof_mean_std.mat;load mfa_simi_ftof_mean_std.mat;load mlgmm_simi_ftof_mean_std.mat;

simi=[all_source_mean_simi source_mean_similarity_mtom source_mean_similarity_mtof source_mean_similarity_ftom source_mean_similarity_ftof;all_dfw_mean_simi dfw_mean_similarity_mtom dfw_mean_similarity_mtof dfw_mean_similarity_ftom dfw_mean_similarity_ftof;all_proposed_mean_simi proposed_mean_similarity_mtom proposed_mean_similarity_mtof proposed_mean_similarity_ftom proposed_mean_similarity_ftof;all_proposed1_mean_simi proposed1_mean_similarity_mtom proposed1_mean_similarity_mtof proposed1_mean_similarity_ftom proposed1_mean_similarity_ftof;all_jdgmm_mean_simi jdgmm_mean_similarity_mtom jdgmm_mean_similarity_mtof jdgmm_mean_similarity_ftom jdgmm_mean_similarity_ftof;all_gmmfusion_mean_simi gmmfusion_mean_similarity_mtom gmmfusion_mean_similarity_mtof gmmfusion_mean_similarity_ftom gmmfusion_mean_similarity_ftof;all_mfa_mean_simi mfa_mean_similarity_mtom mfa_mean_similarity_mtof mfa_mean_similarity_ftom mfa_mean_similarity_ftof;all_mlgmm_mean_simi mlgmm_mean_similarity_mtom mlgmm_mean_similarity_mtof mlgmm_mean_similarity_ftom mlgmm_mean_similarity_ftof];

figure;
x=linspace(1,5,1000);
c=5;
y=c./x;
h1=plot(x,y);
hold all
x1=linspace(1,7,1000);
c1=7;
y1=c1./x1;
h2=plot(x1,y1);
x2=linspace(1,9,1000);
c2=9;
y2=c2./x2;
h3=plot(x2,y2);
x3=linspace(1,11,1000);
c3=11;
y3=c3./x3;
h4=plot(x3,y3);
p1=plot(simi(2,1),qual(2,1),'ro',simi(2,2),qual(2,2),'ro',simi(2,3),qual(2,3),'ro',simi(2,4),qual(2,4),'ro',simi(2,5),qual(2,5),'ro'); %DFW
p2=plot(simi(3,1),qual(3,1),'bd',simi(3,2),qual(3,2),'bd',simi(3,3),qual(3,3),'bd',simi(3,4),qual(3,4),'bd',simi(3,5),qual(3,5),'bd'); %Proposed
p3=plot(simi(5,1),qual(5,1),'ks',simi(5,2),qual(5,2),'ks',simi(5,3),qual(5,3),'ks',simi(5,4),qual(5,4),'ks',simi(5,5),qual(5,5),'ks'); %JDGMM
p4=plot(simi(7,1),qual(7,1),'gv',simi(7,2),qual(7,2),'gv',simi(7,3),qual(7,3),'gv',simi(7,4),qual(7,4),'gv',simi(7,5),qual(7,5),'gv'); %MFA
p5=plot(simi(8,1),qual(8,1),'m^',simi(8,2),qual(8,2),'m^',simi(8,3),qual(8,3),'m^',simi(8,4),qual(8,4),'m^',simi(8,5),qual(8,5),'m^'); %ML-GMM
legend([p1(2) p2(2) p3(2) p4(2) p5(2)],'DFW','Proposed','JDGMM','MFA','ML-GMM');
