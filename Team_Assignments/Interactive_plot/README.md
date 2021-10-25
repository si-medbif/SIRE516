# Assignment: Interactive plot
## Motivation
Data visualization frequently involves presenting multi-dimensional data on a two-dimensional surface (e.g. paper, computer screen). Various visualization techniques were applied to help present multi-dimensional data incluing heat map and principle component analysis. However, creating plots from these techniques requires multiple editions and runs of the codes until satisfying plots are generated. 
Interactive plots are an alternative for visualizing multi-dimensional data by showing one subset of data at a time. For instance, plots for each longitudinal time point may be generated, and a controller could be added to determine which time point should be displayed or to display all plots sequentially, like in a movie. A presentation by Hans Rosling is a good example for using interactive plots to show longitudinal data. (https://youtu.be/jbkSRLYSojo).

## Assignment
You will create an interactive plot to present COVID-19 cases and deaths in five countries including Thailand, Singapore, China, United Kingdom and United States between 1/1/2021 to 30/9/2021. The data set could be downloaded from the website "Our World in Data" (https://ourworldindata.org/covid-cases). The data set is also available in this repository.
Your interactive plot must allow the follows:
- Select one country at a time
- Select number of cases or deaths to be showed
- Select whether to show the number of cases or deaths in either linear or log10-transformed scale.


## Expected result
![Screenshot from 2021-10-25 10-12-04](https://user-images.githubusercontent.com/9914505/138635811-5f5e928d-af19-468e-bad3-cef17f1367d5.png)

## Hints
- Simple method: "manipulate" package
- Advanced method: R-shiny (i.e. you will create a deployable/publishable web application with R-shiny)
- Your interactive plot must be presented through RStudio. The R base IDE will not work with an interactive plot.
