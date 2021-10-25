?ChickWeight #Description of the dataset

####Do not worry about regression, yet. Just run the commands
model1 <- lm(weight ~ Time , data = ChickWeight) #Fitting model
sum1 <- summary(model1) #Summarize the fitting results

print(sum1)

#####Your tasks
#1) What is the type of data container of 'sum1' (i.e. data frame or list)?
#2) How many components are in "sum1"?
#3) Extract "r.squared"
#4) Extract p-value (i.e. Pr(>|t|)) of 'Time' (Hint: 'coefficients')
