data("iris")

# split iris
iris_species <- split(iris, iris$Species)

# unsplit
iris_back <- unsplit(iris_species, iris$Species)

library(dplyr)
all_equal(iris, iris_back)

iris_setosa_1 <- iris %>% filter(Species == "setosa")
# which is the same as the expression below. Note that piping puts the piped value in as the first argument to the function
iris_setosa_2 <- filter(iris, Species == "setosa")

all_equal(iris_setosa_1, iris_setosa_2)