# Week 4: Data visualization
## Topics
1. Basic R plots
2. ggplot2
3. ggplot2 customization
4. Add other elements to ggplot2
5. Multiple plots

## Take-home assignment
Principle component analysis (PCA) is an important tool in data visualization. PCA reduces multi-dimesional data  
by combining all features (variables) in the data and computing principle components (PC). The first principle component (PC1) explains the most variance in the data. The second principle component (PC2) explains the most variance remaining after PC1. The process is continuing until the last PC is calculated. Frequently,  PC1 and PC2 could sufficiently explain the majority of the variance to the data. Thus, the multi-dimesional data could be projected on a 2D surface with PCA. In addition, PCA might reveal clusters of the data indicating potential relationships among the data points in the same cluster.

In this assignment, you will perform a simple PCA with the data set from Lipson et al. 2018 (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6476732/). In this work, the authors analyzed genetic relationship between ancient humans and present-day hunter-gatherers in the mainland southeast asia. 

Since DNA samples from ancient humans were damaged, several techniques must be performed to impute the missing data so that the samples could be analyzed. The imputation techniques will be too advanced for this class. We will perform a simple PCA with the data from the present-day hunter-gatherers including Mlabri and Htin Mal. You will perform:
1) Download dataset from https://reich.hms.harvard.edu/sites/reich.hms.harvard.edu/files/inline-files/SEA2.tar.gz
2) Data preparation and cleaning
3) PCA
4) Visualization of PC1 and PC2

<b>Expected result</b></br>

![image](https://user-images.githubusercontent.com/9914505/140707137-7a245226-42bb-4880-a533-cd3d810c1305.png)

<b>Hint</b>
Please use the following code as a guide

```
#### Installation #####
# install.packages("remotes")
# remotes::install_github("uqrmaie1/admixtools")

library(admixtools)
library(ggplot2)

# STEP 1: Load genotype files in "packedancestrymap" format. Edit the code below.
sea2 <- read_packedancestrymap("RawData/SEA2/SEA2") # Path to your SEA2.geno, SEA2.ind, SEA2.snp file

# STEP 2: Discard any SNP (i.e. row) with missing genotype results (i.e. in sea2$geno).
# Note that in the real practice, an imputation technique should be used to fill out the missing SNPs.

# STEP 3: Perform principle component analysis (PCA) with prcomp() function.
# Note that this PCA is a simple one. Advanced/Specific PCA techniques will be required for the real
# analysis.

# STEP 4: Convert PCA result to data.frame

# STEP 5: Merge ethnicity (i.e. sea2$ind) to the data.frame

# STEP 6: Visualize PC1 and PC2 with ggplot

```
