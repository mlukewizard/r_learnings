# if then else
a <- 66
if (a > 55) {
  print("a is more than 55")
} else {
  print("A is less than or equal to 55")
}

# for loop
mylist <- c(55, 66, 77, 88, 99)
for (value in mylist) {
  print(value)
}

# for loop counter
for (i in 1:10) {
  print(i)
  }

# while loop
a <- 100
while (a < 500) {
  print(paste(a, "is a number")) # Note the use of the handy paste function
  a <- a + 100
}
print(a)

# generating sequences
print(seq(1, 9, by=pi))
print(seq(0, 1, length.out = 11))

# special sequence generation
print(seq_len(10))
print(seq_along(list("a", "b", "c")))