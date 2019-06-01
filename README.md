# Probabilistic Graphical Models in Bioinformatics

## Overview
- **Instructor**: Hesam Montazeri (hesam.montazeri at ut.ac.ir)
- **Teaching Assistants**: Naser Elmi (naser.elmi at ut.ac.ir) & Samaneh Maleknia (maleknias at ut.ac.ir) & Fahimeh Palizban (fahimehpalizban at ut.ac.ir)
- **Time & Location**: Feb-July 2019, lectures are held on Wednesdays 10:00 to 12:00 at Ghods st. 37, Department of Bioinformatics, IBB, Tehran.
### Textbooks
- Probabilistic Graphical Models by Daphne Koller & Nir Friedman.
- Pattern Recognition and Machine Learning by  Christopher Bishop.

## Lecture Schedule

Date | Lecture | Reading Assignments | Homeworks & Projects |
 ------------- | -------------------------- | ------------- | ------------- |
16/11/1397 | Lecture 1- Introduction to probabilistic graphical models ([slides](lectures/01Introduction.pdf))  | **Required**: Koller Textbook, Sec. 1.2, 2.1 <br> **Optional**: Koller Textbook, Sec. 2.2 |[Project 1](projects/project1.pdf "Data Analysis Project #1: Learning Bayesian networks from gene expression data")<br> [Project1.R](projects/project1.R "Data Analysis Project #1: sample R code") <br> [HW1](homeworks/HW1.pdf "Problem set 1") |
29/11/1397 | Lecture 2- Bayesian network representation ([slides](lectures/02Bayesian-networks.pdf)) | **Required**: Koller Textbook, Sec. 3.1, 3.2 | [HW2](homeworks/HW2.pdf "Problem set 2") | 
6/12/1397 | Lecture 3- Bayesian network representation 2 ([slides](lectures/03Bayesian-networks-2.pdf)) <br> <br> Tutorial 1- Introduction to R by Samaneh Maleknia ([slides](tutorials/01IntroductiontoR.pdf), [R Script](tutorials/script1.r)) | **Required**: Koller Textbook, Sec. 3.3.1, 3.3.4, 3.4.1, 3.4.2 <br> **Optional**: Koller Textbook,  Sec. 3.3.2, 3.3.3 | [HW3](homeworks/HW3.pdf "Problem set 3") | 
13/12/1397 | Lecture 4- Conditional probability distributions; Gaussian Bayesian networks ([slides](lectures/04CPDs-GBN.pdf)) <br> <br> Tutorial 2- Lagrange multiplier ([notes](tutorials/02-LagrangeMultipliers.pdf)); multivariate Gaussian distributions ([slides](tutorials/02IntroToRVandND.pdf)) | **Required**: Koller Textbook, Sec. 5.1-3, 5.4.2, 5.5, 7.1-2 <br> **Optional**: McGeachie, 2014 ([CGBayesNets: Conditional Gaussian Bayesian Networks](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003676)) | [HW4](homeworks/HW4.pdf "Problem set 4") <br>  [HW4.R](homeworks/HW4.r) <br>  [HW4train.csv](homeworks/HW4train.csv) <br>  [HW4test.csv](homeworks/HW4test.csv) | 
20/12/1397 | Lecture 5- Learning Bayesian networks (MLE, fully observed data) ([slides](lectures/05learning-overview.pdf))  <br> <br> Tutorial 3- Introduction to overfitting, Beta and Dirichlet distributions  ([slides](tutorials/03IntroToOverfitting.pdf)) | **Required**: Koller Textbook, Sec. 17.1-2  <br> **Optional**:  Koller Textbook, Ch. 16 |  [HW5](homeworks/HW5.pdf) <br>  [HW5.csv](homeworks/HW5.csv) | 
21/01/1398 | Lecture 6- Bayesian paramater estimation ([slides](lectures/06bayesian-parameter-estimation.pdf)) | **Required**: Koller Textbook, Sec. 17.3 | [Project 2](projects/project2.pdf)  <br> [HW6](homeworks/HW6.pdf)  | 
28/01/1398 | Lecture 7- Bayesian parameter estimation; constraint-based structure learning ([slides](lectures/07parameter-and-structure-learning.pdf)) <br> <br> Tutorial 4- Introduction to information theory and JAGS ([slides](tutorials/04IntroToITandJAGS.pdf)) | **Required**: Koller Textbook, Sec. 17.4.1-3, 18.1-2, 3.4.3   | [HW7](homeworks/HW7.pdf) <br>  [JAGS-Example](tutorials/JAGS-test)  |
04/02/1398 | Lecture 8- Score-based structure learning ([slides](lectures/08score-based-structure-learning.pdf))|  **Required**: Koller Textbook, Sec. 18.3, 18.4.1 | [HW8](homeworks/HW8.pdf)  |
11/02/1398 | Lecture 9- Score-based structure learning; partially observed data ([slides](lectures/09structure-learning-and-partially-observed-data.pdf)) | **Required**: Koller Textbook, Sec. 18.4.1-3, 19.1.3, 19.2.1, A.5.1, A.5.2.1 <br> **Optional**: Koller Textbook, Sec. 18.5 |   [HW9](homeworks/HW9.pdf) |
18/02/1398 |  Lecture 10-Expectation-maximization; regulatory motif finding ([slides](lectures/10expectation-maximization.pdf)) | **Required**: Koller Textbook, Sec. 19.2.2 and Section 2.1 of [Quang  2014](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4058924/). <br> **Optional**: Bishop Textbook, Sec. 2.3.9, 9.2-3| [Project 3](projects/project3.pdf) <br> [P3-Data](projects/project3_datasets.RData) <br> [HW10](homeworks/HW10.pdf) |
25/02/1398 | Lecture 11- Undirected graphical models; variable elimination ([slides](lectures/11markov-networks-and-VE.pdf)) | **Required**: Koller Textbook, Sec. 4.1-2, 9.2, 9.3.1 | [HW11](homeworks/HW11.pdf)  |
1/03/1398 | Lecture 12- Variable elimination; Gibbs sampling for motif finding ([slides](lectures/12VE-Gibbs-sampling-for-motif-finding.pdf)); Gaussian mixture model (whiteboard notes) | Koller Textbook, Sec.  9.3.2, 9.4.2; Compeau Textbook, Ch. 2 | [HW12](homeworks/HW12.pdf) |
08/03/1398 | Lecture 13- Clique trees; MAP inference ([slides](lectures/13clique-trees.pdf)) | Koller Textbook, Sec. 10.1, 10.2.1-2, 10.4, 13.1.2, 13.2 |  |
08/03/1398 | Lecture 14- Bayesian networks for temporal data ([slides](lectures/14temporal-models.pdf)) (whiteboard notes) | Koller Textbook, 6.1-2;  Compeau Textbook, Ch. 10 |  [HW13/14](homeworks/HW13-14.pdf) <br> [Data](homeworks/HW13-14-data.zip) <br> [R code](homeworks/HW13-14.r) |
13/03/1398 | Lecture 15- Particle-based approximate inference | Koller Textbook, ch. 12  | HW15  |


