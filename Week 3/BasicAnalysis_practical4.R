library(car)

?Davis

#Correct errors in the dataset
print(Davis[10:13,])

nDavis <- Davis
nDavis[12,2:3] <- Davis[12,3:2]

#Use nDavis dataset, not Davis