# types are more specific than classes

x <- 4.2
class(x)
typeof(x)

# Use L to make a number into an integer
y <- 5L
class(x)
typeof(x)

# Dates
c <- "9-5-2016"
e <- as.Date(c)
class(e)
typeof(e)
f <- as.POSIXct(c)
class(f)
typeof(f)

# vectors, formed using c(), every element must have the same class
twenty <- c(1:20)
alphabet <- c(letters)

# vectors are 1 indexed
print(twenty[1])
# if you try to access an element which does not exist, you get NA
print(twenty[0])

# lists can hold elements of multiple types, it is created by using list()
L1 <- list(1, "2", list(1, 2))
L1[[1]]
# turn into a dataframe
L1_df = as.data.frame(L1)


# a matrix is a 2d vectors, elements must have the same class, created using matrix()
matrix1 <- matrix(c(1:12), nrow = 3, ncol = 3, byrow = FALSE) # if a matrix is not by row then it is by column
matrix2 <- matrix(c(1:12), nrow = 3, ncol = 3, byrow = TRUE)

rownames(matrix1) <- c("one", "two", "three")
colnames(matrix1) <- c("one", "two", "three")

matrix1[1, 2]
matrix2[1, 2]

# specifying a single dimension
matrix1["one", ]

# a dataframe is a 2d object where the columns can contain data of different classes and types, create with as.data.frame() or joining vectors with cbind.data.frame() or rbind.data.frame()
list_for_df <- list(list(1, 2), list(3, 4))
example_df <- as.data.frame(list_for_df)
colnames(example_df) <- c("one", "two", "three")
# you can now access elements using $
example_df$one

df_2 <- rbind.data.frame(c(1:5), c(6:10))
# handy functions to count the number of rows and columns
nrow(df_2) 
ncol(df_2)

# Factors and recoding
gears_over_time = c(1, 1, 2, 3, 4, 4, 5, 2, 1, 1, 2, 4) # gears is a list, this is suboptimal
gears_over_time2 <- as.factor(gears_over_time)

