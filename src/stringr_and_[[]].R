library("stringr")

names <- c("luke markham", "nik burkoff")

# demonstration of [[]]
names_split <- str_split(names, pattern = " ")
names_split
names_split[[1]]