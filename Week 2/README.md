# Week 2: Data handling
## Topics
1. Indexing
2. Import and Export Data
3. Data Frame Operations
4. Useful Functions For Data  Preparation
5. Data Transformation

## Take-home assignment

In a report for clinical study (involving human subjects), the first table (i.e. Table 1) shown before any other results is almost always a
table describing demographics and baseline characteristics of the study population. This table
is essential since it shows whether there is any bias in the selection of the study population. The
table also helps investigators explore and verify the data to ensure that there is no error before
performing further analysis.<p/>
You will be given four files.
1. dataset.csv: a comma-separated values file containing a study dataset (i.e. this is your test dataset). (https://github.com/si-medbif/SIRE516/blob/main/Week%202/dataset.csv)
2. dataset_dictionary.xlsx: A Microsoft Excel file containing data dictionary that describes each columns of the dataset in “dataset.csv” (https://github.com/si-medbif/SIRE516/blob/main/Week%202/dataset_dictionary.xlsx)
3. example.xlsx: An example of the baseline/demographic table (i.e. expected formats). (https://github.com/si-medbif/SIRE516/blob/main/Week%202/example.xlsx)
4. Week2_Expected_Results.xlsx: A table with expected results. You may select to show either mean/SD or median/IQR (i.e. you do not need to show both). (https://github.com/si-medbif/SIRE516/blob/main/Week%202/Week2_Expected_Results.xlsx)

The "dataset.csv" file contains some errors. Please check and correct the file. <b>Write a report (MS word or plain text are acceptable) showing all the errors in this file (2 points)</b>.

You will create an R script for exploratory data analysis. Fill out each row of the baseline/demographics table. Please use correct statistical values (e.g. mean, median), units and decimal places of each row based on “example.xlsx”. 

Submit the <b>R script (5 points)</b> and the <b>final table (in CSV or Excel format, 3 points)</b>. Your R script does not need to print an entire final table. It may print one 'cell' at a time so you could copy the result and paste in the Excel file. <p/>

<b>Hints</b>
- Function for mean = mean(), SD = sd() <p/>
- Function for median = median(), IQR = quantile(…, probs = c(0.25,0.75)) <p/>
- Count and percent = indexing and nrow() or table() or cut() and table() <p/>

<b>Sample R script</b>
```
res <- someFunction(data)

print(res)

'25.5±4.7' #Mean and SD result  
```

<b> Files to be submitted </b>
1. Report for data correction (MS Word or Plain TXT)
2. R script for exploratory data analysis
3. Baseline/demographic table (MS Excel or CSV)
