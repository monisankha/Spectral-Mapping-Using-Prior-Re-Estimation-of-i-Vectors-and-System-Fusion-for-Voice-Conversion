clear;clc;
a=[6.8204 6.5724 6.4936 6.4739 6.3546 6.1482 6.1982 6.1007 6.0305 5.8120 5.7259 5.7069]; %JDGMM
b=[6.6466 6.4825 6.4138 6.4125 6.4084 6.4006 6.2907 6.2564 6.2360 6.0081 5.8847 5.9189]; %PROPOSED

c=[6.8912 6.7621 6.7275 6.6864 6.6738 6.6921 6.6160 6.5804 6.5415 6.4640 6.4369 6.3559]; %JDGMM
d=[6.7727 6.7606 6.6578 6.6349 6.6671 6.6644 6.6601 6.6899 6.7085 6.5951 6.5358 6.5456]; %PROPOSED

e=(a+c)./2;
f=(b+d)./2;

load mean_err_mcd_gmm_proposed_mtom.mat;
d1=1:8;d2=9:2:15;
d3=[d1 d2];
err_mcd_gmm1=err_mcd_gmm(d3)/1.96;
err_mcd_proposed1=err_mcd_proposed(d3)/1.96;

x=[2 3 4 5 6 7 8 9 10 20 30 40];

errorbar(x,e,err_mcd_gmm1,'-s','MarkerSize',10,...
    'MarkerEdgeColor','blue','MarkerFaceColor','blue');

hold all;
errorbar(x,f,err_mcd_proposed1,'-s','MarkerSize',10,...
    'MarkerEdgeColor','red','MarkerFaceColor','red');
