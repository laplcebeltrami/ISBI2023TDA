% Statistical Inference on Persistent Homology (PH-STAT)
%
% https://github.com/laplcebeltrami/ISBI2023TDA/blob/main/PH-STAT
%
% (C) 2023 Moo K. Chung, Universtiy of Wisconsin-Madison 
%
%     Email: mkchung@wisc.edu

%genrate random p number of scatter points in [0,1]^d hyper-cube.
%X is the matrix of size p x d of coordinates
p=5; d=3;
X = rand(p, d);
%S= PH_rips(X, 3, 0)
%PH_rips_display(X,S)
%title('Uniformly distributed points in [0,1]^3')

%Compute the Rips complex up to 3-simplices.
S= PH_rips(X, 3, 1)

%Display Ris complex
PH_rips_display(X,S)
labels = cellstr(num2str((1:p)', '% d'));
text(X(:,1)+0.01, X(:,2)+0.01, X(:,3)+0.01, labels, 'Color', 'r', 'FontSize',18) 

%Boundary matrices
B = PH_boundary(S);


%TASK 1: Write PH_homology.m that gnerates the k-th homology group (quotient space)


%TASK 2: Write PH_betti.m that computes the Betti numbers beta_0, beta_1, beta_2, ... 

