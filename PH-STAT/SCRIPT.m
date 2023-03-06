% Statistical Inference on Persistent Homology (PH-STAT)
%
% https://github.com/laplcebeltrami/ISBI2023TDA/blob/main/PH-STAT
%
% (C) 2023 Moo K. Chung, Universtiy of Wisconsin-Madison 
%
%     Email: mkchung@wisc.edu

%% --------------------
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

%Boundary matrices
B = PH_boundary(S);
betti = PH_betti(B)
title('\beta_0=1, \beta_1=4, \beta_2=0')


%% -----------------------
%genrate random p number of scatter points along a circle in [0,1]^d hyper-cube.
%X is the matrix of size p x d of coordinates
p=50; d=3;
c = [0.5, 0.5, 0.5];
theta = linspace(0, 2*pi, p)';

x = c(1) + 0.4*cos(theta);
y = c(2) + 0.4*sin(theta);
z = c(3) + zeros(size(theta));
X = [x y z] + rand(p, d)/2; % add a noise to make them affinely independent. 

%Compute the Rips complex up to 3-simplices.
S= PH_rips(X, 4, 0.3)

%Display Ris complex
PH_rips_display(X,S)
%labels = cellstr(num2str((1:p)', '% d'));
%text(X(:,1)+0.01, X(:,2)+0.01, X(:,3)+0.01, labels, 'Color', 'r', 'FontSize',18) 

%Boundary matrices
B = PH_boundary(S);
betti = PH_betti(B)
title('\beta_0=1, \beta_1=5, \beta_2=0')


%%  ------------------
%Icosahedron: A solid with 20 equilateral triangular faces, 12 vertices, and 30 edges.

phi = (1 + sqrt(5)) / 2;  % Golden ratio
% Define the coordinates of the vertices
X = [0.5 + 0.5/phi, 0.5 + 0.5/phi, 0;
            0.5 + 0.5/phi, -0.5 - 0.5/phi, 0;
            -0.5 - 0.5/phi, 0.5 + 0.5/phi, 0;
            -0.5 - 0.5/phi, -0.5 - 0.5/phi, 0;
            0, 0.5 + 0.5/phi, 0.5 + 0.5/phi;
            0, 0.5 + 0.5/phi, -0.5 - 0.5/phi;
            0, -0.5 - 0.5/phi, 0.5 + 0.5/phi;
            0, -0.5 - 0.5/phi, -0.5 - 0.5/phi;
            0.5 + 0.5/phi, 0, 0.5 + 0.5/phi;
            0.5 + 0.5/phi, 0, -0.5 - 0.5/phi;
            -0.5 - 0.5/phi, 0, 0.5 + 0.5/phi;
            -0.5 - 0.5/phi, 0, -0.5 - 0.5/phi];

S= PH_rips(X, 4, 1.8)

%Display Ris complex
PH_rips_display(X,S)

B = PH_boundary(S);
betti = PH_betti(B)

