####Basic Mathematical Operations pt 1####
1 + 2 #Addition
1 - 2 #Substraction
1 / 2 #Division
1 * 2 #Multiplication
2 ^ 5 #Power
sqrt(4) #Square root
5 %/% 2 #Integer division
5 %% 2 #Modulo

####Basic Mathematical Operations pt 2####
log10(100) #Logarithm base 10
log(100, base = 10) #Logarithm base 10
log(100) #Natural logarithm
exp(1) #Exponential i.e. e^1
round(2.111, digits = 1) #Rounding
floor(2.111) #Round down to integer
ceiling(2.111) #Round up to integer
abs(-123) #Absolute value

####Basic Logical Operations pt 1####
20 == 18 #Comparing whether 'left' equals to 'right.'

20 = 18 #This is wrong. Try and see what happens.

20 != 18 #Comparing whether 'left' does not equal to 'right.'
20 < 18 #Comparing whether 'left' is less than 'right.'
20 > 18 #Comparing whether 'left' is greater than 'right.'
20 <= 18 #Comparing whether 'left' is less than or equal to 'right.'
20 >= 18 #Comparing whether 'left' is greater than or equal to 'right.'

20 =< 18 #This is wrong. Try and see what happens.
20 => 18 #This is wrong. Try and see what happens.

####Basic Logical Operations pt 2####
(20 > 18) & (20 < 18) #'AND' operation
(20 > 18) | (20 < 18) #'OR' operation
!(20 < 18) #'NOT' operation

####Variable assignment pt 1####
(20 > 18) & (20 < 18)
#Versus
a <- (20 > 18)
b <- (20 < 18)
c <- a & b
print(c) #'print()' is to show the values of the variable

d <- (20 == 18)
e <- c | d #Versus ((20 > 18) & (20 < 18)) | (20 == 18)
print(e)

####Variable assignment pt 2####
a = 1 #Generic: Assign the 'right' value to the 'left' variable

a <- 1 #R: Assign the 'right' value to the 'left' variable
1 -> a #R: Assign the 'left' value to the 'right' variable
a <- 1 -> b #R: Multiple assignments
a <- b <- 1 #R: Multiple assignments

####Variable assignment pt 3####
a <- 123 #Correct
a1 <- 123 #Correct
1a <- 123 #Incorrect
a 1 <- 123 #Incorrect
a_1 <- 123 #Correct
a.1 <- 123 #Correct #Different meaning in Java or Python
a! <- 123 #Incorrect
a? <- 123 #Incorrect
.a <- 123 #Correct
print(a1) #R is case-sensitive
print(A1) #R is case-sensitive

####Types of data pt 1####
a <- 2 #numeric
b <- TRUE #logical
c <- "Hello, World!" #character #Must be in " " or ' '
c <- Hello, World! #Try and see
d <- NA #missing (logical)
e <- NaN #'Not a Number' = ill-defined e.g. 0/0 (logical)

typeof(a) #Check the 'R internal' type of data by 'typeof()'
class(a) #Check the 'customized' type of data by 'class()'
#class() is used more often.

is.logical(b) #'is.logical()' is for checking if the data is 'logical' 
is.logical(d)
is.na(b) #'is.na()' is an essential function for managing missing data.
is.na(d)
#is.nan(); is.numeric(); is.character() and others
####Types of data pt 2####
a <- "good"
class(a)
typeof(a)
af <- factor(a, levels = c("terrible","bad","neutral","good","excellent"))
print(af)
class(af)
typeof(af)
as.numeric(af) #Convert to numeric, i.e. extracting numerical elements
as.character(af) #Convert to character, i.e. extracting character elements

####Types of data pt 3####
library(lubridate)

a <- "27-3-2018"
class(a)
typeof(a)
ad <- dmy(a) #function in lubridate package converting 'character' to 'date'
print(ad)
class(ad)
typeof(ad)
as.numeric(ad) #Convert to numeric (i.e. Days since 1-1-1970)
as.character(ad) #Convert to character, i.e. extracting character elements

####Conversion####
a <- 1
print(a)
as.character(a) #Convert to character
as.factor(a) #Convert to factor; cannot change levels or labels
factor(a, levels = c(3,2,1)) #Specify levels
factor(a, levels = c(1,2,3), labels = c("one","two","three")) #Specify labels

b <- "111"
as.numeric(b)
c <- "1,111"
as.numeric(c) #CAUTION: Data conversion may introduce missing data
d <- "1111"
as.numeric(d)

####Vector pt 1####
A <- c(1,2,3,4)
print(A)
class(A)

B <- c("a","b","c","d")
print(B)
class(B)

C <- c(TRUE, FALSE, T, F)
print(C)
class(C)

####Vector pt 2####
D <- c(1,NA,3,0/0)
print(D)
class(D)

E <- c(1,TRUE,0/0,"a")
print(E)
class(E)

####Matrix pt 1####
a <- 1:8 #a <- c(1,2,3,4,5,6,7,8) or a <- seq(from=1,to=8,by=1)
print(a) #vector of data
A <- matrix(data = a,nrow = 4) 
#load 'a' vector into a matrix
#nrow' indicates number of rows
print(A)

B <- matrix(data = a,ncol = 4) #'ncol' indicates number of columns
print(B)

C <- matrix(data = a,ncol = 4, byrow = T) 
#'byrow' fill values by row
# Default is by column (i.e. byrow = F)
print(C)

####Matrix pt 2####
D <- matrix(data = c(1:6,NA,T),ncol = 4, byrow = T)
print(D) #Look at the last member of the matrix

E <- matrix(data = c(1:6,T,"a"),ncol = 4, byrow = T)
print(E) #Look at the type of data in the matrix

####Data frame pt 1####
A <- data.frame( name = c("A","B","C"), #Vector 1 assigned as 'name' column
                 weight = c(50,60,55), #Vector 2 assigned as 'weight' column
                 height = c(150,166,162)) #Vector 3 assigned as 'height' column
print(A)

A2 <- data.frame(c("A","B","C"), #No column names assignment
                 c(50,60,55), 
                 c(150,166,162)) 
print(A2)

B <- data.frame( name = c("B","C"),
                 weight = c(50,60,55),
                 height = c(150,166,162)) #Try and see what happens


####Data frame pt 2####
C <- data.frame( name = c("A","B","C"),
                 weight = c(50,60,"Not measured"),
                 height = c(150,166,162))
print(C) #Try and see
A$weight #'A$weight' is for calling the 'weight' column of 'A' data frame
#We will get into how to access data in the data frame in the later session
class(A$weight)

C$weight
class(C$weight)


####List####
a <- c(T,F)
b <- 1:6
c <- c("A","E","I","O","U")

A <- list(a,b,c) #Combine vectors as a list
print(A)

A2 <- list(col1 = a, col2 = b, col3 = c) #'name' can be assigned to each member
print(A2)

d <- data.frame( name = c("A","B","C"),
                                 weight = c(50,60,55),
                                 height = c(150,166,162))
B <- list(A,d) #list and data frame in the list 
print(B)

####If and else####
A <- NA #Assign the input here

if(!is.numeric(A)){
  print("A is not a number")
}else if(is.nan(A)){  
  print("A is not a number")
}else if(A %% 2 == 0){
  print("A is even")
}else if(A %% 2 == 1){
  print("A is odd")
}else{
  print("A is not an integer")
}

#Try changing A to 2, 1.1, NA and 0/0

####For loop####
A <- c(1,2,3,4,5,6,7)
for(i in A){
  #'i' is a temporary variable with its value = each member of A
  #Reassignment of 'i' occured at every new round
  print(i)
}

B <- letters #letters and LETTERS are built-in vectors containing alphabets
for(j in B){
  #'j' is a temporary variable with its value = each member of A
  #Reassignment of 'j' occured at every new round
  print(j)
}

####While loop####
i <- 1

while(i < 100){ #Breaking/Exiting condition
  print(i) #Do something here
  i <- i + 1 #DO NOT forget to the change breaking condition!!! 
}

####Function pt 1####
library(reshape2) #Nothing to do with the code 
#Just demo how the code should look like
odd_even <- function(A){ #Define the 'odd_even' function
  if(!is.numeric(A) | is.nan(A)){#Debugged for NaN
    result <-  "Your input is not a number"
  }else if(A %% 2 == 0){
    result <-  "Your input is even"
  }else if(A %% 2 == 1){
    result <-  "Your input is odd"
  }else{
    result <-  "Your input is not an integer"
  }
  return(result)
}

odd_even(A = 12) #Call the function by name
odd_even(0/0)

####Function pt 2####
testFn <- function(A,B,C = 2){#C is 2 by default
  result <- (A+B)*C
  return(result)
}

testFn(A = 1, B = 2) #C is 2 by default
testFn(A = 2, B = 3, C = 4)
testFn(0,4,1) #A = 0, B = 4, C = 1 -> Assign by the order of arguments
testFn(C = 0,B = 4, A = 1) #Specifically assign value to A,B,C

####Help####
help("shapiro.test")
?shapiro.test
??shapiro.test
