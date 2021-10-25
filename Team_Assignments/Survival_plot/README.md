# Assignment: Survival plot (Kaplan-Meier plot)
## Motivation
Survival analysis is a special statistical analysis that simultaneously evaluates both categorical and numerical outcomes. The analysis focuses on the "time-to-event." It analyzes whether the event occured within an observable time frame. If the event did occur, how long did it take from the begining of the observation to the event? If the event did not occured, the time element of the outcome is then censored at the last time of observation.<p/>

In the biomedical field, the survival analysis is often used to analyze an efficacy of drugs or vaccines. For example, the survival analysis can be used to assessed the efficacy of SARS-CoV-2 vaccine by observing how many vaccinees got infected and how long after the vaccination compared to the placebo group. For more information about survival analysis, please refer to Shreffler J, Huecker MR. Survival Analysis. [Updated 2021 May 30]. In: StatPearls [Internet]. Treasure Island (FL): StatPearls Publishing; 2021 Jan-. Available from: https://www.ncbi.nlm.nih.gov/books/NBK560604/

## Assignment
You will reproduce Figure 2G of Suputtamongkol et al., (https://pubmed.ncbi.nlm.nih.gov/33462580/). This figure demonstrates the efficacy of ivermectin in reducing dengue virus nonstructural protein 1 (NS1) in patients. The data set is available in this repository with minor modifications. You survival plot (Kaplan-Meier plot) must contains:
- The p-value is derived from log-rank test.
- Censored marks for the patients with no NS1 clearance.
- Life table is optional (The part of plot showing "Number at risk").

## Figure 2G
![image](https://user-images.githubusercontent.com/9914505/138673680-1813e360-24aa-487a-a587-a6ae00d3d57b.png)

## Hints
- The difficult part of this assignment is the data preparation for plotting. You will need to understand how to prepare data for survival model (i.e. outcomes must contain both "time" and "event" elements).
- "survminer" package
- "survival" package 
