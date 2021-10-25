C <- data.frame( name = c("A","B","C"),
                 weight = c(50,60,"Not measured"),
                 height = c(150,166,162))
weight <- C$weight 
#Convert weight from kilograms to pounds
#1 Kilo ~ 2.2 pounds
weight * 2.2 #Try and see

#####Your tasks
#1) Convert 'weight' to numerical data 
#2) Convert 'weight' to pound (1 kilo ~ 2.2 pound)
#HINT: Correct answer = c(110, 132,  NA)

