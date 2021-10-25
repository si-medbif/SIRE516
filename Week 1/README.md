# Week 1: Introduction to R language
## Topics
1. R and RStudio installation
2. R packages installation
3. Programming concepts in R
    - Data structure
    - Flow control
    - Function
    - Help
    - Workspace

## Assignments
Select one of these two assignments. You may do both, but only one will be graded. You will write your own function so <b>do not use a function from an R package.</b>

### 1) Reverse complementary strand generator
You will write a function that will accept a DNA sequence of any length in a 5'->3' direction and generate a reverse complementary strand in a 5'-> 3' direction.

#### Expected result

```
seq <- 'ATCG' #This is your test data
comseq <- yourFunction(seq)
print(comseq)

'CGAT'
```

### 2) Hardy-Weinberg calculator
You will write a function that will accept a phenotype frequency of a dominant trait and generate a result vector containing five numbers as follows:
1. a phenotype frequency of a recessive trait (i.e. a genotype frequency of homozygous recessive allele)
2. a genotype frequency of homozygous dominant allele
3. a genotype frequency of heterozygous
4. a frequency of dominant allele
5. a frequency of recessive allele

For more information regarding Hardy-Weinberg equilibrium please refer to :
Griffiths AJF, Miller JH, Suzuki DT, et al. An Introduction to Genetic Analysis. 7th edition. New York: W. H. Freeman; 2000. Box 24-2, Hardy-Weinberg Equilibrium. Available from: https://www.ncbi.nlm.nih.gov/books/NBK22048/box/A3848/


#### Expected result
```
dom_phe <- 0.51 #This is your test data. Frequency is between 0 to 1.
result <- yourFunction(dom_phe)
print(result)

[1] 0.49 0.09 0.42 0.3 0.7
```

