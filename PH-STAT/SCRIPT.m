% Statistical Inference on Persistent Homology (PH-STAT)
%
% https://github.com/laplcebeltrami/ISBI2023TDA/blob/main/PH-STAT
%
% (C) 2023 Moo K. Chung, Zijian Chen
% Universtiy of Wisconsin-Madison 
%
% email: mkchung@wisc.edu

%% --------------------
%% Rips complex
%genrate random p number of scatter points in [0,1]^d hyper-cube.
%X is the matrix of size p x d of coordinates
p=50; d=3;
X = rand(p, d);
%S= PH_rips(X, 3, 0)
%PH_rips_display(X,S)
%title('Uniformly distributed points in [0,1]^3')

%Compute the Rips complex up to 3-simplices.
S= PH_rips(X, 4, 0.3)

%Display Ris complex
PH_rips_display(X,S)
%labels = cellstr(num2str((1:p)', '% d'));
%text(X(:,1)+0.01, X(:,2)+0.01, X(:,3)+0.01, labels, 'Color', 'r', 'FontSize',16) 

%% -----------------
%% Boundary matrices
B = PH_boundary(S);
betti = PH_betti(B)
title('\beta_0=1, \beta_1=4, \beta_2=0')


%% ---------------
%% Sampling from a single Dirichlet distribution 

alpha=[3,2,3]';
weight=1;
n=500;

figure;
Dirichelt_theoretical(alpha,weight);
x = Dirichlet_sample(alpha,weight,n);
hold on; scatter(x(:,1),x(:,2),100,'.k','MarkerFaceAlpha',0.05);


%% ----------------
%% Sampling from a mixture of Dirichlet distributions

alpha=[3,8,2;8,3,2;7,3,8;3,7,8]';
weight = [0.25,0.25,0.25,0.25];
n = 500;

figure;
Dirichelt_theoretical(alpha,weight);
s = Dirichlet_sample(alpha,weight,n);
hold on; scatter(s(:,1),s(:,2),100,'.k');



