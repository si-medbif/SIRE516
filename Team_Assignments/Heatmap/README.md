# Team Assignment: Heatmap

## Motivation
A heatmap is a two-dimensional diagram that depicts three-dimensional data, specifically two categorical variables and one numerical variable. X and Y axes show two categorical variables while a color in each cell represents a numerical value corresponding to categorical values on X and Y axes. 

In biological fields, a heatmap is usually used for presenting gene expression reults from microarray or RNASeq. A value on one axis might represent a gene while the other represent a cell line or a condition of the assay (e.g. with or without drug). The color might represent a fold change in gene expression in a specific cell line/codition compared to the control condition.

## Assignment
You will visualize the RNASeq results from various cell lines infected with SARS-CoV-2 virus. You will try to reproduce Figure 4B of Sun et al., (https://doi.org/10.1038/s41598-021-96462-w). The identical data set for plotting Figure 4B is uploaded in this folder, but you may also download Supplementary file 1 (https://static-content.springer.com/esm/art%3A10.1038%2Fs41598-021-96462-w/MediaObjects/41598_2021_96462_MOESM1_ESM.xlsx) from the original source. Please read the original article carfully to understand how the data were prepared or filtered before plotting Figure 4B. Your heatmap might not be identical to Figure 4B, but it must contain the follows:

- Dendrograms on both X and Y axes showing that the data were clustered before plotting
- Colors should be a gradient of two colors such as Red to Blue or Red to Green

## Figure 4B
![image](https://user-images.githubusercontent.com/9914505/138027787-af3ec546-1ac3-4108-b700-8bf7268440d8.png)

## Expected result
![image](https://user-images.githubusercontent.com/9914505/138027662-44e65bea-c68c-4624-a1ed-0a71243029f0.png)

## Hints
- Heatmap.2 (gplots)
- ComplexHeatmap (Bioconductor packages)
