# apply() lapply(), sapply(), vapply(), mapply(), rapply(), tapply()

data("iris")

apply(iris[, -c(5)], 2, FUN=mean) 
# the 2 here means do it over columns (1 would mean rows)
apply(iris[, -c(5)], 2, function(x) c(mean(x), var(x)))