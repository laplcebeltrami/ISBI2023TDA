% Tutorial for Topological Data Analysis for Biomedical Imaging in ISBI
%
% (C) 2022 Zijian Chen, Moo K. Chung
%     University of Wisconsin-Madison
%

%% Sampling from a single Dirichlet distribution 

alpha=[3,2,3]';
weight=1;
n=500;

figure;
Dirichelt_theoretical(alpha,weight);
x = Dirichlet_sample(alpha,weight,n);
hold on; scatter(x(:,1),x(:,2),100,'.k','MarkerFaceAlpha',0.05);
figure_bg('w'); figure_bigger(20)


%% Sampling from a mixture of Dirichlet distributions

alpha=[3,8,2;8,3,2;7,3,8;3,7,8]';
weight = [0.25,0.25,0.25,0.25];
n = 500;

figure;
Dirichelt_theoretical(alpha,weight);
s = Dirichlet_sample(alpha,weight,n);
hold on; scatter(s(:,1),s(:,2),100,'.k');
figure_bg('w'); figure_bigger(20)