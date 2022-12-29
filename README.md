# Tutorial in ISBI 2023
## Topological Data Analysis for Biomedical Imaging Data

Topological data analysis (TDA) is a fast growing field proving many powerful tools for biomedical imaging data. TDA characterizes topological changes of multivariate representations of imaging data in multidimensional scales. In doing so TDA reveals the persistent topological patterns in data only visible on a multiscale level. The overall topological changes hold more significance in TDA features over fleeting structures also makes the approach particularly robust at the presence of imaging noise and artifacts. This is the first TDA tutorial in ISBI. The tutorial is aimed at educating both basics and state of the arts in TDA for students and researchers attending ISBI. The expected audiences are graduate students and researchers trying to learn TDA for the first time. However, existing TDA researchers will also benefit. The knowledge in TDA or topology is not needed. 


### Lecture 1. Simplical homology and persistent homology
The tutorial will be given by Moo K. Chung of University of Wisconsin-Madison with the help of Zijian Chen. The tutorial will cover the basics of topological data analysis (TDA) such as Rips and graph filtrations, boundary operators, the Hodge Laplacian. Then the concept of persistent diagrams and barcodes will be introduced. How to resampling scatter points in the persistent diagram using the Dirichlet distribution will be explained. 

### Lecture 2. Wasserstein distance between persistent diagrams
The tutorial will be given by Soheil Kolouri of Vanderbilt University. The tutorial consists of introduction to Wasserstein distances and its sliced version, which does scalable computation of the Wasserstein distance. Persistent diagrams will be represented as an empirical distributions using the Dirac delta functions. Then  the algorithmic detail on the computation of  the Wasserstein distance between persistent diagrams will be presented. Its scalable version called the sliced-Wasserstein distance will be also introduced and contrasted against the baseline (Hungarian algorithm).  

### Lecture 3. Dynamic topological data analysis
The tutorial will be given by Hernando Ombao of KAUST. The tutorial will explain who to transform  time series data (functional biomedical images such as MEG, EEG, fMRI and fNIR) into topological descriptors through time delay embedding and slide window embedding. Then graph consistint of the scatter points will be used to build persistent diagrams or other topological features. The dependency structures of data then can be modeled through persistent homology. 


(C) 2022 Zijian Chen, Soheil Kolouri, Hernando Ombao, Moo K. Chung
