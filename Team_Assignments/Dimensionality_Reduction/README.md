# Team Assignment: Dimensionality Reduction

## Motivation
Some types of biological data contain a large number of variables per observation (i.e. multi-dimesional data). It would be difficult to visualize to find any patterns in the data using all variables as they are. Dimensionality Reduction techniques could be used to calculate a few important derived features that could be used to generate a two-dimensional plot. The plot may reveal some patterns or clusters in the data that could be used to generate research questions and hypotheses. Principle component analysis (PCA) is the most well-known dimensionality reduction technique.

## Assignment
You will analyze the data from single-cell RNA sequencing (scRNAseq) experiments by Lawlor et al (https://doi.org/10.1101/gr.212720.116). The data were derived from cells isolated from pancreatic islets of healthy and diabetic human subjects. Your goal is to used unsupervised dimensionality reduction techniques to determine whether scRNAseq data are clusted by cell types found in the islets. You will try to replicate Figure 3A with t-distributed stochastic neighbor embedding (t-SNE) and another dimensionality reduction technique (e.g. PCA or UMAP). Therefore, at least two plots are expected. Please read the original article (and supplementary files) carfully to understand how the data were prepared or filtered before plotting Figure 3A. t-SNE is random so your t-SNE plot will definitely be different from Figure 3A.

<b>OPTIONAL:</b> You may try to stratify the data points by disease status and indicate by the shape of points. 

## Figure 3A
![image](https://github.com/user-attachments/assets/c5d919a0-41dd-412e-8394-a4f6b6b89230)

## Expected result
<b>1. t-SNE plot</b></br>

![image](https://github.com/user-attachments/assets/d27d6e8f-400e-4fc8-912d-b5924f28de49)

<b>2. UMAP plot</b></br>

![image](https://github.com/user-attachments/assets/fe073527-f435-48ad-adbf-1c75065c525d)

## Hints
- Rtsne 
- umap
- scRNAseq (Bioconductor packages)

Please use this R-script to access the data from Lawlor et al (bypassing QC and formatting steps of the RAW sequencing outputs).

```
library(scRNAseq)

#### Load the data from Lawlor et al. 
dat <- LawlorPancreasData(legacy = FALSE)
```  

`dat` is a `SingleCellExperiment` object. You will need to use `@` to access each component of `dat`. For example, `dat@colData` is for accessing the metadata of each scRNAseq sample (e.g. patient information, cell type). You may need a combination of `@` and `$` to access the certain data.
