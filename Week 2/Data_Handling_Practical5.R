library(hflights)
?hflights

hflights[,c("Year","Month","DayofMonth")]

#####Your tasks
#1) Create 'hflights$txt_date' storing texts of complete dates
#HINT 1: paste
#2) Create 'hflights$date' by converting 'hflights$txt_date' to date data
#HINT 2: lubridate