####Data Frame Operations pt 1####
?women #Description of the data frame
str(women)

#Create new columns with calculated/transformed data from other column
print(women$height_m) #Before assignment
women$height_m <- women$height * 0.0254 #Convert inch to meter
print(women$height_m) #After assignment

women$weight_kg <- women$weight * 0.4536 #Convert pound to kilogram
women$BMI <- women$weight_kg/(women$height_m ^ 2)

print(women)

####Data Frame Operations pt 2####
nrow(women)
vector1 <- 1:nrow(women)
ID <- data.frame(id = vector1) #vector1 assigned as 'id' column
print(ID)

n_women <- cbind(women,ID)
print(n_women)

#What if number of rows does not match?
vector2 <- 1:10
ID2 <- data.frame(id2 = vector2) 
print(ID2)
n_women <- cbind(women,ID2) #Try and see what happens

####Data Frame Operations pt 3####
data(women) #Load the original women data set
print(women)

new_record <- data.frame(height = 55, weight = 100 )
print(new_record)
new_women <- rbind(women,new_record)
print(new_women)

#What if number of column does not match?
new_record2 <- data.frame( weight = 120 ) 
print(new_record2)
new_women <- rbind(women,new_record2) #Try and see what happens

####Data Frame Operations pt 4####
#a = transaction data
a <- data.frame(ID = 1:5, 
                buyer = c("DM","PS","AC","KP","YT"),
                seller = c("A","A","B","D","E"))
#b = seller information
b <- data.frame(abbre = c("A","B","C","D"),
                full = c("Apple","Banana","Carrot","Durian"),
                phone = c("111","222","333","444"))
print(a)
print(b)

####Data Frame Operations pt 5####
result <- merge(x=a,y=b, by.x = "seller",by.y = "abbre") #Inner join
print(result) #Drop all unmatched

result <- merge(x=a,y=b, by.x = "seller",by.y = "abbre", all.x = T) #Left join
print(result) #Drop unmatched in 'b' (i.e. y or right)

result <- merge(x=a,y=b, by.x = "seller",by.y = "abbre", all.y = T) #Right join
print(result) #Drop unmatched in 'a' (i.e. x or left)

result <- merge(x=a,y=b, by.x = "seller",by.y = "abbre", all = T) #Outer join
print(result) #Do not drop any unmatched

result <- merge(x=a,y=b, by=NULL) #Cross join
print(result) #All combinations

####Quick look####
View(mtcars)

head(mtcars)
head(mtcars, n = 2)

tail(mtcars)
tail(mtcars, n = 3)

####attach()####
?mtcars

mtcars$mpg #Call column 'mpg' from 'mtcars' data frame
mpg #Try and see what happens

attach(mtcars)
mpg
gear
hp

detach(mtcars) #Detach the data frame
mpg #Try and see what happens

####unique pt 1####
?mtcars
print(mtcars)

new_mtcars <- rbind(mtcars, mtcars[5:10,])
u_mtcars <- unique(new_mtcars)
print(new_mtcars)
print(u_mtcars) #Deduplicate new_mtcars

dim(mtcars)
dim(new_mtcars)
dim(u_mtcars)

identical(mtcars,new_mtcars) #Check if two objects are identical
identical(mtcars,u_mtcars)

####unique pt 2####
?iris

iris$Species
unique(iris$Species)
levels(iris$Species)
table(iris$Species)

c_species <- as.character(iris$Species) #Covert from 'factor' to 'character'
levels(c_species) #Try and see what happesn
unique(c_species)
table(c_species)

####paste and paste0####
paste("I","love","you.")
paste0("I","love","you.")
paste("I","love","you.", sep = "")

library(hflights)
?hflights

#Let's create complete flight number (e.g. TG001)
hflights$CF_num <- paste0(hflights$UniqueCarrier,hflights$FlightNum)

#Convert a vector to a single text with collapse
test <- paste0(hflights$UniqueCarrier,hflights$FlightNum, collapse = " ")
length(test)
nchar(test)

####cut####
?women
women$weight
#Let's group data by weight
#-Inf------150]------Inf (i.e Grp 1 = -Inf to 150 and Grp2 = >150 to Inf)
cut(women$weight,breaks = c(-Inf,150,Inf) )

#-Inf---120]---130]---140]---150]---Inf
cut(women$weight,breaks = c(-Inf,120,130,140,150,Inf) )

#-Inf---120)---130)---140)---150)---Inf
cut(women$weight,breaks = c(-Inf,120,130,140,150,Inf), right = F )

#-Inf---120]---130]---140]---150]---Inf
#Rename group with labels
cut(women$weight,breaks = c(-Inf,120,130,140,150,Inf), 
    labels =  c("very underweight","underweight","normal","overweight","obese"))

####lubridate####
library(lubridate)
today() #Current date
now() #Current date & time

ymd(c("2010-1-1","2010/2/2","2010 3 3")) #Texts are written in Year-Month-Day
mdy(c("Feb 2,2011", "November 21st, 2012")) #Texts are written in Month-Day-Year
dmy_hms(c("11/11/2011 11:11:11", "7 April 2001 1:05:11 PM")) #Texts are written 
#in Day-Month-Year-Hour-Minute-Second

dmy(c("12/11/2016","2001-1-11")) #Try and see what happens

a <- dmy_hm("5/6/2014 3:40 PM")#Texts are written in Day-Month-Year-Hour-Minute
b <- dmy_hm("6/6/2014 8:20 AM")

print(a)#Default format of date&time
paste0(day(a),"/",month(a),"/",year(a)," ",hour(a),":",minute(a))#Extract each
#element and re-format date&time
b-a #Simple calculation
difftime(b,a, units = "mins") #Specify units 
difftime(b,a, units = "days") #Specify units 

####aggregate####
?iris
print(iris)

#Median of ‘Petal.Length’ by ’Species’
median(iris$Petal.Length, na.rm = T)
unique(iris$Species)
#1) For loop method
for(s in unique(iris$Species)){
  print(s)
  flags <- which(iris$Species == s)
  result <- median(iris[flags,"Petal.Length"], na.rm = T)
  print(result)
}
#2) Aggregate method
aggregate(Petal.Length ~ Species, data = iris, FUN = median, na.rm = T)

####t####
?iris
t_iris <- t(iris)

print(iris)
print(t_iris)

summary(iris)
summary(t_iris)

####melt pt 1####
#install.packages("rvest", dep = T)
library(rvest)
library(reshape2)

####For importing data from html source; Do not worry about this####
url <- 'https://en.wikipedia.org/wiki/List_of_countries_by_past_and_projected_GDP_(PPP)'
test <- read_html(url)
tbls <- html_nodes(test, "table") 
ttt <- html_table(tbls, fill = T)
tb4 <- as.data.frame(ttt[[1]])
#####

str(tb4)
View(tb4)

####melt pt 2####
mtb4 <- melt(tb4, id.vars = c('Country (or dependent territory)'))
View(mtb4)

####dcast pt####
library(reshape2)

View(ChickWeight)

cast_CW <- dcast(ChickWeight, Chick + Diet ~ Time, value.var = "weight")

View(cast_CW)
