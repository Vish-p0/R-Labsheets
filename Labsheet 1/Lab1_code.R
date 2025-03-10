#Introduction to R

#simple arithmetic operations
5 + 3    # Result: 8
10 / 2   # Result: 5
2^3      # Result: 8 (2 cubed)
10 %% 3  # Result: 1 (remainder of 10/3)
10 %/% 3 # Result: 3 (integer division)

#Assigning values to variables
x <- 10      # Assigns 10 to x
y = 20       # Alternative assignment(Best for top level assignment and parameter passing)
z <- x + y   # z now equals 30
z

#R indexes start from 1 not 0

#Vectors (Only one type of data else use implicit conversion)
#creating vectors
numbers <- c(1,2,3,4,5) #numeric vector
names <- c("Vishwa", "Kavishka", "Shen", "Kabi")  #Character vector
logical_values <- c(TRUE, FALSE, TRUE) #logical vector

#vector operations
numbers + 2  #adds 2 to each element in vector: 3, 4, 5, 6, 7
numbers * 3  #multiplies each element by 3: 3, 6, 9, 12, 15
numbers #changes dont affect the original vector
numbers + c(1,2,3,4,5)  #Element-wise addition: 2, 4, 6, 8, 10

#accessing vector elements
numbers[3]  # Access 3rd element: 3
numbers[c(1,3,5)] # Access 1st, 3rd, and 5th elements: 1, 3, 5
numbers[numbers > 3]  # Access elements greater than 3: 4, 5

#factors (Saves data as levels for distinct values)
#creating a factor
gender <- factor(c("male", "female", "male", "male", "female"))
levels(gender) # Output: "female" "male"
as.numeric(gender) #male = 2 female = 1
symptoms <- factor(c("mild", "severe", "moderate", "mild"),
                   levels = c("mild", "moderate", "severe"))
#explicitly gives the levels now mild = 1 moderate = 2 and mild = 3



#lists
#creating lists
person <- list(
  name = "John Smith",
  age = 30,
  married = TRUE,
  children = c("Jane", "Tom")
)

#accessing list elements
person$name  # Output: "John Smith"
person[[1]]. # Output: "John Smith"
person$children[2].  # Output: "Tom"



#Matrices (matrices in R can store only one data type )
#creating a matrix
mat <- matrix(1:9, nrow = 3, ncol = 3)
mat
# Result:
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

#matrix operations
mat * 2    # Multiply each element by 2
mat[2, 3]    # Access element at row 2, column 3: 8
mat[2, ]    # Access entire row 2: 2, 5, 8
mat[, 1]    # Access entire column 1: 1, 2, 3



#dataframes (simillar to table)
#creating dataframes
students <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(22,25,23),
  grade = c("A","B","C"),
  pass = c(TRUE,TRUE,TRUE)
)
students
# Result:
#      name age grade  pass
# 1   Alice  22     A  TRUE
# 2     Bob  25     B  TRUE
# 3 Charlie  23     A  TRUE

#accessing data frame elements
students$name    # Access name column: "Alice" "Bob" "Charlie"
students[1, ]    # Access first row: Alice 22 A TRUE
students[, "age"]    # Access age column: 22 25 23
students[2, 3]    # Access element at row 2, column 3: "B"


#packages
# Installing a package (run once)
install.packages("ggplot2")

# Loading the package for use in the current session
library(ggplot2)

#basic plotting
#simple scatter plot
x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)
plot(x,y,main="Simple Scatter plot", xlab="Xaxis", ylab="Y axis")

# With ggplot2 (after loading the package)
data <- data.frame(x = x, y = y)
ggplot(data, aes(x=x, y=y)) + geom_point() + ggtitle("Scatter Plot with ggplot2")



#logical operations
#logical operations with vectors
x <- c(1,3,5,7,9)
x > 5 # Result: FALSE FALSE FALSE TRUE TRUE
x[x>5] # Result: 7 9

#combining logical conditions
x > 3 & x < 8  #FALSE FALSE TRUE TRUE FALSE
x < 3 | x > 7  # Result: TRUE FALSE FALSE FALSE TRUE

