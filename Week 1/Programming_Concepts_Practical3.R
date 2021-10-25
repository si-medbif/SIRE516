quadForm <- function(A,B,C){
  #answer1 <- ???
  #answer2 <- ???
  return(c(answer1, answer2))
}
#####Your tasks
#1) Create a function ‘quardForm()’ that takes input a, b, c from a quadratic equation to solve for x
#2) Test your function with the following equations:
    # x^2 + 4x - 21 = 0
    # 10x^2 + 13x - 3 = 0
    # x^2  - 25 = 0
    # x^2 + 4 = 0
#HINT: quadratic formula needs to return two values

###BONUS 1
# Your function should return c(NaN, NaN) for x2 + 4 = 0
# Actually, there are answers, but they are complex numbers
# Modify your ‘quadForm()’ function to return answers as ‘complex’ data type
# HINT 1: as.complex(); try sqrt(-2) and sqrt(as.complex(-2))
# HINT 2: answers are c(0+2i, 0-2i)
sqrt(-2)
sqrt(as.complex(-2))


###BONUS 2
# From BONUS 1, could you modify your function that will:
    # Return ‘numeric’ data if there are only real solutions
    # Return ‘complex’ data if there are only complex solutions
