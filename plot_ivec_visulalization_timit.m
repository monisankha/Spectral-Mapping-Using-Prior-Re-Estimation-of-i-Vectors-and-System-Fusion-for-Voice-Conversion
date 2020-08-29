%==========================================================================
% Plot for old T
clear;clc;
load suff_stat128_straight.mat;
load phonetic_gmm_straight.mat;
m=reshape(mix.centres,1,128*24);
E=reshape(mix.covars,1,128*24);
f=68;
T= randn(f,128*24) * sum(E,2) * 0.001; %T initialization
save T_init_timit.mat T; %save initialized T
%--------------------------------------------------------------------------
load T_init_timit.mat;
% v=rand(100,1792);
F=F';N=N';
dim = size(F,2)/size(N,2);
for i=1:10
    i
    [T y]=estimate_t_new(F, N, S', m, E, T);
    T_old{i}=T;
    y_old{i}=y; % i-vector at each iteration inside T
end
save y_old_timit.mat y_old;
save T_old_timit.mat T_old;

load y_old_timit.mat;
%--------------------------------------------------------------------------
m=2;
[U,L,mu,mse1] = pca(y_old{10}',m); %PCA on the estimated i-vectors after 10 iteration
Y = U'*bsxfun(@minus,y_old{10}',mu); % projection
%--------------------------------------------------------------------------
Y=Y';
a1=cell(1,4);
% a1{1}=1:141;a1{2}=142:271;a1{3}=272:413;a1{4}=414:555;
a1{1}=1:10;a1{2}=11:20;a1{3}=51:60;a1{4}=71:80; 

for i=1:3
    i
    data=Y(a1{i},:); %100 i-vectors of each 3 speakers 
    % Plot the original data
    figure(1);
    plot(data(:,1), data(:,2),'.','color',rand(1,3));
    hold all;
%     m1=mean(data);
%     c1=cov(data);
%     hold all;
%     h2 = plot_gaussian_ellipsoid(m1,c1);
%     set(h2,'color',rand(1,3));

    % Draw the error ellipse
    [r_ellipse, X0, Y0,largest_eigenvec, largest_eigenval,smallest_eigenvec, smallest_eigenval]=error_ellipse_ivec(data);
    plot(r_ellipse(:,1) + X0,r_ellipse(:,2) + Y0,'-','color',rand(1,3))
     hold all;

% mindata = min(min(data));
% maxdata = max(max(data));
% xlim([mindata-3, maxdata+3]);
% ylim([mindata-3, maxdata+3]);
% hold on;

    % Plot the eigenvectors
    quiver(X0, Y0, largest_eigenvec(1)*sqrt(largest_eigenval), largest_eigenvec(2)*sqrt(largest_eigenval), '-','color',rand(1,3), 'LineWidth',2);
    quiver(X0, Y0, smallest_eigenvec(1)*sqrt(smallest_eigenval), smallest_eigenvec(2)*sqrt(smallest_eigenval), '-g', 'LineWidth',2);

end

%==========================================================================
%Plot for new T

%clear;clc;
load suff_stat128_straight.mat;
load phonetic_gmm_straight.mat;
m=reshape(mix.centres,1,128*24);
E=reshape(mix.covars,1,128*24);
f=68;
%--------------------------------------------------------------------------
load T_init_timit.mat;
%T= randn(f,128*24) * sum(E,2) * 0.001;
% v=rand(100,1792);
F=F';N=N';
% v=rand(100,1792);
for i=1:10
    i
    [T y s1 s2]=estimate_t_priormod_20_6_16_new(F, N, S', m, E, T,f);
    T_new{i}=T;
    y_new{i}=y;
    s1_new{i}=s1;
    s2_new{i}=s2;
end
save y_new_timit.mat y_new;
save T_new_timit.mat T_new;
load y_new_timit.mat;
%--------------------------------------------------------------------------
m=2;
[U,L,mu,mse1] = pca(y_new{10}',m); %PCA on the estimated i-vectors after 10 iteration
Y = U'*bsxfun(@minus,y_new{10}',mu); % projection
%--------------------------------------------------------------------------
Y=Y';
a1=cell(1,4);
% a1{1}=1:141;a1{2}=142:271;a1{3}=272:413;a1{4}=414:555;
a1{1}=1:10;a1{2}=11:20;a1{3}=51:60;a1{4}=71:80; 
for i=1:3
    data=Y(a1{i},:); %100 i-vectors of each 3 speakers
    % Plot the original data
    figure(2);
    plot(data(:,1), data(:,2),'.','color',rand(1,3));
    hold all;
    
%     m1=mean(data);
%     c1=cov(data);
%     hold all;
%     h2 = plot_gaussian_ellipsoid(m1,c1);
%     set(h2,'color',rand(1,3));

    % Draw the error ellipse
    [r_ellipse, X0, Y0,largest_eigenvec, largest_eigenval,smallest_eigenvec, smallest_eigenval]=error_ellipse_ivec(data);
     plot(r_ellipse(:,1) + X0,r_ellipse(:,2) + Y0,'-','color',rand(1,3))
     hold all;


% mindata = min(min(data));
% maxdata = max(max(data));
% xlim([mindata-3, maxdata+3]);
% ylim([mindata-3, maxdata+3]);
% hold on;

% Plot the eigenvectors
quiver(X0, Y0, largest_eigenvec(1)*sqrt(largest_eigenval), largest_eigenvec(2)*sqrt(largest_eigenval), '-','color',rand(1,3), 'LineWidth',2);
quiver(X0, Y0, smallest_eigenvec(1)*sqrt(smallest_eigenval), smallest_eigenvec(2)*sqrt(smallest_eigenval), '-g', 'LineWidth',2);

end