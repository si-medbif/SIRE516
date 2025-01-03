# Team Assignment: Dimensionality Reduction

## Motivation
Some types of biological data contain a large number of variables per observation (i.e. multi-dimesional data). It would be difficult to visualize to find any patterns in the data using all variables as they are. Dimensionality Reduction techniques could be used to calculate a few important derived features that could be used to generate a two-dimensional plot. The plot may reveal some patterns or clusters in the data that could be used to generate research questions and hypotheses. Principle component analysis (PCA) is the most well-known dimensionality Reduction technique.

## Assignment
You will analyze the data from single-cell RNA sequencing experiments by Lawlor et al (https://doi.org/10.1101/gr.212720.116). the RNASeq results from various cell lines infected with SARS-CoV-2 virus. You will try to reproduce Figure 4B of Sun et al., (https://www.nature.com/articles/s41598-021-96462). The identical data set for plotting Figure 4B is uploaded in this folder, but you may also download Supplementary file 1 (https://static-content.springer.com/esm/art%3A10.1038%2Fs41598-021-96462-w/MediaObjects/41598_2021_96462_MOESM1_ESM.xlsx) from the original source. Please read the original article carfully to understand how the data were prepared or filtered before plotting Figure 4B. Your heatmap might not be identical to Figure 4B, but it must contain the follows:

- Dendrograms on both X and Y axes showing that the data were clustered before plotting
- Colors should be a gradient of two colors such as Red to Blue or Red to Green

## Figure 4B
![image](https://user-images.githubusercontent.com/9914505/138027787-af3ec546-1ac3-4108-b700-8bf7268440d8.png)

## Expected result
![image](https://user-images.githubusercontent.com/9914505/138027662-44e65bea-c68c-4624-a1ed-0a71243029f0.png)

## Hints
- Heatmap.2 (gplots)
- ComplexHeatmap (Bioconductor packages)
