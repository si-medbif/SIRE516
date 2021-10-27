#From https://towardsdatascience.com/how-to-do-logistic-regression-in-r-456e9cfec7cd
library(AER)
data(Affairs)
?Affairs

Affairs$ynaffair[Affairs$affairs >  0] <- 1
Affairs$ynaffair[Affairs$affairs == 0] <- 0
Affairs$ynaffair <- factor(Affairs$ynaffair,levels=c(0,1), labels=c("No","Yes"))
table(Affairs$ynaffair)