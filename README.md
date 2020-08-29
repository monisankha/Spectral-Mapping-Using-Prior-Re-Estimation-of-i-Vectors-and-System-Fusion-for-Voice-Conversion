# Spectral-Mapping-Using-Prior-Re-Estimation-of-i-Vectors-and-System-Fusion-for-Voice-Conversion

In this work, we propose a new voice conversion (VC) method using i-vectors which consider low-dimensional representation of speech utterances. 
An attempt is made to restrict the i-vector variability in the intermediate computation of total variability (T) matrix by using a novel approach 
that uses modified-prior distribution of the intermediate i-vectors. This T-modification improves the speaker individuality conversion. 
For further improvement of conversion score and to keep a better balance between similarity and quality, band-wise spectrogram fusion between conventional 
oint density Gaussian mixture model (JDGMM) and i-vector based converted spectrograms is employed. The fused spectrogram retains more spectral details 
and leverages the complementary merits of each subsystem.


% Database used: CMU-ARCTIC, WSJ, TIMIT

% Paper published: Pal, Monisankha, and Goutam Saha. ["Spectral mapping using prior re-estimation of i-vectors and system fusion for voice conversion."](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8015184) IEEE/ACM Transactions on Audio, Speech, and Language Processing 25.11 (2017): 2071-2084.

Main VC functions:

1. gmm_vc_straight.m ---> JDGMM based VC using STRAIGHT Analysis/Synthesis

2. mcd_pesq_score_gmm_simple.m---> Objective score calculation for JDGMM

3. mfa_vc_straight_training_simple.m--> Simple i-vector based VC or Mixture of factor analyzer (MFA) based VC using STRAIGHT

4. mcd_pesq_score_mfa_simple.m---> Objective score calculation for MFA or i-vector based VC

5. proposed_vc_straight.m---> Proposed (T-matrix modification + Spectrogram fusion) VC using STRAIGHT

6. mcd_pesq_score_proposed_tmod2_simple_new.m---> Objective score calculation using proposed VC

7. gmm_vc_straight_ml.m---> Maximum-likelihood GMM based VC (based on Toda et al. 2007) using STRAIGHT (global variance is not incorporated)

8. mcd_pesq_score_gmmml.m---> Objective score calculation using GMM-ML VC

9. dfw_vc_training.m---> Dynamic frequency warping (DFW) VC using STRAIGHT

10. mcd_pesq_score_dfw.m---> Objective score calculation using DFW VC

11. subjective_overall_new3.m---> Subjective evaluation plots to compare several VC methods

12. plot_similarity_quality_balance_new.m--> Plot to show the subjective similarity versus quality balance of different VC methods

13. plot_ivec_visulalization_timit.m---> Scatter plot of i- vectors using conventional and modified T for three speakers projected onto 2-dimensional space defined by the first two principal axes of PCA

14. plot_mcd_vartrnguttrncs.m--> MCD values plot with respect to change in number of parallel training utterances

*** For any query pls contact at monisankha.pal@gmail.com
