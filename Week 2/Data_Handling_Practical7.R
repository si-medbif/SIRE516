#install.packages("lme4",dep = T)
library(lme4)
library(reshape2)

?sleepstudy
View(sleepstudy)

#####Your tasks
# Use 'dcast' to create a wide format table for 'sleepstudy' data