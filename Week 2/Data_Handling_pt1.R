####Accessing vector pt 1####
letters #'letters' is a built-in vector containing lower case alphabets

print(letters) #Show everything in the vector

length(letters) #Number of members

class(letters) #Type of data in the vector
typeof(letters) #Type of data in the vector

summary(letters) #Summary of the vector
str(letters) #Structure of the vector

####Accessing vector pt 2####
letters[1] #First member
letters[20] #Twentieth member
letters[30] #Try and see what happens

letters[1:10] #First to tenth
letters[c(1,10)] #First AND tenth
letters[c(1,10,20)] #First, tenth and Twentieth
letters[c(1:10,20)] #First to tenth and Twentieth
letters[seq(from = 1, to = 26, by =2)] #Every other members

letters[-26] #Drop the last member
length(letters)
letters[-length(letters)] #Drop the last member
letters[-seq(from = 1, to = 26, by =2)]

#Drop the last 7 members of 'letters' vector
#letters[???]

####Accessing vector pt 3####
vowel <- c("a","e","i","o","u")
letters #Built-in vector for lower case alphabets

flags <- which(letters %in% vowel)
letters[flags] #Flagged positions
letters[-flags] #Un-flagged positions

#'%in%' tests each member in the 'letters' vector whether it is "in"
#the 'vowel' vector
letters %in% vowel
#'which' returns the position of TRUE 
which(letters %in% vowel)

#Advanced user; Code might be more confusing
letters[which(letters %in% vowel)]
letters[which(!(letters %in% vowel))]
letters[-which(letters %in% vowel)]

####Accessing vector pt 4####
a <- runif(n = 100,min = 1,max = 10) 
#Randomly generate 100 real numbers greater than 1, but smaller than 10

flags <- which(a >= 9)
a[flags]
a[-flags]

#Advanced user; Code might be more confusing
a[a>=9]
a[!(a>=9)]

#Why use "which"? NA and NaN 
b <- c(a,NA,0/0)
print(b)
flags <- which(b >= 9)
b[flags]
b[b >= 9] #Look at the last two members

####Accessing matrix pt 1####
a <- runif(n = 12,min = 1,max = 10)  
am <- matrix(data = a, nrow = 4)

print(am) #Show everything in the matrix

dim(am) #Dimension of the matrix; row column
nrow(am) #Number of rows
ncol(am) #Nuber of columns

class(am) #Container type
typeof(am) #Type of data in the matrix

summary(am) #Summary of the matrix
str(am) #Structure of the matrix

####Accessing matrix pt 2####
a <- runif(n = 12,min = 1,max = 10)  
am <- matrix(data = a, nrow = 4)

print(am)
#Matrix[Row,Column]
am[1, ] #Row 1; 'All' columns -> Vector
am[ ,1] #All rows; Column 1 -> Vector
am[1,1] #Row 1, Column 1 -> Cell/Single value

am[c(1,2,4), c(1,3)] #Row 1, 2 and 4; Column 1 and 3
am[-3,-2] #Drop row 3; Drop column 2 (i.e. H4 x W3 -> H3 x W2)

am[nrow(am),ncol(am)] #Last row, Last column -> Cell/Single value

#Row 2 to 4, Column1
#am[???]

####Accessing data frame pt 1####
?mtcars #'mtcars' is a built-in data frame for 'Motor Trend Car Road Tests'

print(mtcars) #Show everything in the data frame
View(mtcars) #Nice way to look at the data frame

dim(mtcars) #Dimension of the data frame; row column
nrow(mtcars) #Number of rows
ncol(mtcars) #Nuber of columns

class(mtcars) #Container type
typeof(mtcars) #Container type

summary(mtcars) #Summary of the data frame
str(mtcars) #Structure of the data frame

####Accessing data frame pt 2####
names(mtcars) #Names in the data frame
colnames(mtcars) #Names of columns
rownames(mtcars) #Names of rows

#Call a column by name
mtcars$mpg #All data in column 'mpg' -> vector
mtcars["mpg"]#All data in column 'mpg' -> data.frame
mtcars[["mpg"]]  #All data in column 'mpg' -> vector
mtcars[ ,"mpg"] #All row; Column 'mpg' -> vector
 
#Call a row by name
mtcars["Mazda RX4",]

#Call a raw and columns by names
mtcars["Mazda RX4",c("mpg","hp","gear")]

####Accessing data frame pt 3####
mtcars[10,] #Tenth row
mtcars[,10] #Tenth column == mtcars$gear
mtcars[10,10] #Tenth row; Tenth column

#Mixed with "names"
mtcars$mpg[1:10] #Column 'mpg'; Row 1 to 10 -> vector
mtcars[1:10,"mpg"] #Row 1 to 10, Column 'mpg' -> vector
mtcars[1:10,]$mpg #Row 1 to 10, Column 'mpg' -> vector

mtcars[c(1,10,12), c("mpg","gear")] #Row 1, 10 and 12; Column 'mpg' and 'gear'

####Accessing data frame pt 4####
flags <- which(mtcars$gear < 4) #Which row has gear < 4

print(mtcars$gear < 4)
print(which(mtcars$gear < 4))

mtcars[flags, ] #Use row number to select row; all columns -> data frame
mtcars[flags, ]$mpg  #Use row number to select row; Column 'mpg' -> vector
mtcars[flags,"mpg"]  #Use row number to select row; Column 'mpg' -> vector
mtcars$mpg[flags] #Column 'mpg'; Use row number to select row -> vector
mtcars[flags,c("mpg","hp")]  #Use row number to select row; Column 'mpg' and 'hp'

flags <- which(mtcars$gear < 4 & mtcars$hp < 100)
#Which row has gear < 4 and hp < 100
mtcars[flags, ] 
#Advanced user
mtcars[ which(mtcars$gear < 4 & mtcars$hp < 100),]

####Accessing list pt 1####
A <- list(a = c(T,F), b = 1:6, c = letters, d = mtcars) 

print(A) #Show everything in the list

class(A) #Container type
typeof(A) #Container type

summary(A) #Summary of the list
str(A) #Structure of the list (More useful)

####Accessing list pt 2####
A[1] #Member 1 of the list -> list
A[[1]] #Member 1 of the list -> vector

A[[1]][2] #Member 2 of Member 1 of the list
A[1][2] #Try and see what happens

####Accessing list pt 3####
names(A) #Names in list A
str(A) #Structure of list A

A$a #Return vector
A["a"] #Return list (Not useful)
A[["a"]] #Return vector

A["d"] #Return list (Not useful)
A$d #Return data frame
A$d$mpg #Access column of the data frame in the list

####Saving your data####
?mtcars #Description of the data frame
?write.csv #Description of the command for saving the data 

write.csv(x = mtcars, #Specify your data.frame to be saved  
  file = "~/Desktop/R/mtcars.csv", #Specify the file name and path
  na = '', #OPTIONAL: How will the missing data be shown (default = 'NA')
  row.names = FALSE #OPTIONAL: Show row.names or not (default = TRUE)
  )

write.csv(x = mtcars,   
          file = "~/Desktop/R/mtcars2.csv"
)
