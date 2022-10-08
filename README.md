# Tutorial in ISBI 2023
## Topological Data Analysis for Biomedical Imaging Data

### Lecture 1. Simplical homology and persistent homology
The tutorial will be given by Chung. The tutorial will cover simplical complex data structures (including Rips complex), boundary operators, spectral-TDA through the Hodge Laplacian \citep{dakurah.2022}. Then data visualization techniques such as persistent diagrams and barcodes will be introduced. Diffusion, gradient computation, convolution and kernel computation over simplical complices will be given as an application \citep{anand.2021.arXiv}.  


\subsection*{Lecture 2. Wasserstein distance between persistent diagrams}
The tutorial will be given by Kolouri. The tutorial consists of introduction to Wasserstein distances and its sliced version. Persistent diagrams will be represented as an empirical distributions using the Dirac delta functions. 
Then  the algorithmic detail on the computation of  the Wasserstein distance between persistent diagrams will be presented \citep{carriere.2017}. Its scalable version called the sliced-Wasserstein distance will be also introduced \citep{kolouri.2019}. Various machine learning applications including deep learning will be presented \citep{kolouri.2020,naderializadeh.2021}.  In deep leaning, mainly the sliced-Wasserstein distance is used as a loss function \citep{hu.2019}.


\subsection*{Lecture 3. Dynamic topological data analysis}
The tutorial will be given by Ombao. The tutorial consists of the concept of time delay embedding that embed time series data and biological signals into the time series of scatter points \citep{anderson.2006}.  The dependency structures of data will then be modeled through persistent homology  \citep{bourakna.2022,bourakna.2023}. The topological dependency of dynamic imaging data has been rarely investigated but the direction of TDA is moving toward modeling the topology of dynamics or the dynamics of topological changes in functional imaging such as MEG, EEG and fMRI \citep{song.2020.ISBI}. 
