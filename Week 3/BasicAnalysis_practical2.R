library(MASS)

?Melanoma

female <- Melanoma[which(Melanoma$sex == 0),]
male  <- Melanoma[which(Melanoma$sex == 1),]
