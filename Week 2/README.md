# Week 2: Data handling
## Topics
1. Indexing
2. Import and Export Data
3. Data Frame Operations
4. Useful Functions For Data  Preparation
5. Data Transformation

## Assignment

In a report for clinical study, the first table shown before any other results is almost always a
table describing demographics and baseline characteristics of the study population. This table
is essential since it shows whether there is any bias in the selection of study population. The
table also helps investigators explore and verify the data to ensure that there is no error before
performing further analysis.<p/>
You will be given three files.
1. dataset.csv: a comma-separated values file containing a study dataset (i.e. this is your test dataset).
2. dataset_dictionary.xlsx: A Microsoft Excel file containing data dictionary that describes each columns of the dataset in “dataset.csv”
3. example.xlsx: An example of the baseline/demographic table (i.e. Expected result)

The "dataset.csv" file contains some errors. Please check and correct the file. Write a report (MS word or plain text are acceptable) showing all the errors in this file (2 points).

You will create an R script for exploratory data analysis. Fill out each row of the baseline/demographics table. Please use correct statistical values (e.g. mean, median), units and decimal places of each row based on “example.xlsx”. 

Hint1: Mean = mean(), SD = sd() <p/>
Hint2: Median = median(), IQR = quantile(…, probs = c(0.25,0.75)) <p/>
Hint3: Count and percent = indexing and nrow() or table() or cut() and table() <p/>

Submit the R script (5 points) and the final table (in CSV or Excel format, 3 points). Your R script does not need to print an entire final table. It may print one 'cell' at a time so you could copy the result and paste in the Excel file. <p/>

Sample R script
```
res <- someFunction(data)

print(res)

'25.5±4.7' #Mean and SD result  
```

## Files to be submitted
1. Report for data correction (MS Word or Plain TXT)
2. R script for exploratory data analysis
3. Baseline/demographic table (MS Excel or CSV)
