# Data structures

# Variables
i <- "hellO"
print(i)

# Lists
my_list <- list(aa=1, bb=2, cc=3)
print(my_list$aa)
my_list$dd = 4
print(my_list$dd)

# Vectors
# create a vector using the c() function
v <- c(98, 99, 100)
print(v[1:2])

# create a vector from a range of integers
r <- (1:10)
print(r[5:10])

v <- c(1, 2, 3)
v[4] <- 4

# Matrices
# Create a 2-row, 3-column matrix with named headings
data <- c(1, 2, 3, 4, 5, 6)
headings <- list(list("row1", "row2"), c("a","b","c"))
m <- matrix(data, nrow=2, ncol=3, byrow=TRUE, dimnames=headings)
print(m)

# Dataframes
# create a new data frame
years <- c(1980, 1985, 1990)
scores <- c(34, 44, 83)
df <- data.frame(years, scores)
print(df$years)
print(df[1])