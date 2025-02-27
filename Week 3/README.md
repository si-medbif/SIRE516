# Week 3: Basic data analyses
## Topics
1. Exploratory data analysis
2. Hypothesis testing
3. Categorical Data Analysis
4. Linear Regression
5. Logistic Regression

## Take-home assignment

We will analyze a dataset from Framingham heart study (FHS, https://framinghamheartstudy.org/). FHS is a cohort study involving thousands of participants over several decades. The study aims to determine factors associating with a cardiovascular disease. Current knowledge about the risk factors for heart disease such as smoking, obesity and chloresterol level were derived from FHS.<p/>

Your tasks are:
1) Create a table summarizing each variable disease and non-disease group (i.e. present representative values such median(IQR) or count(%)).
2) Compare each variable between disease and non-disease group with an appropriate test and put the p-values in the table. Your table should look like this.<p/>
![image](https://user-images.githubusercontent.com/9914505/139024370-cf1de935-02b9-4a3b-82a3-8f1615c34f83.png)
3) Create and select an optimal logisitic regression model that predict whether a participant will develop heart disease. You might have to discard participants with missing data. (An imputation of the missing data is usually more appropriate in a real analysis, but we will not do it in this assignment.) 
4) Report odds ratios along with their 95% CI from the optimal model.

The dataset can be downloaded (with a registration) from https://biolincc.nhlbi.nih.gov/teaching/. Alternatively, the dataset and data dictionary are also available here: https://github.com/GauravPadawe/Framingham-Heart-Study

<b>Files to be submitted</b>
1. R script for exploratory data analysis and logistic regression analysis. Your R script does not need to create an entire summary table, but it should at least print values in each cell in the table. (6 points)
2. The summary tables including the table from exploratory data analysis with univariate comparison and the table reporting optimal multivariate logistic regression results (MS Excel or CSV). Expected results are 'Week3_Expected_Results_EDA.csv' and 'Week3_Expected_Results_regression.csv'. Do not worry if your p-values are not identical to expected results. Your optimal model may be different from the expected result so please describe how you selected the model in you R script. (4 points, 2 for each)
