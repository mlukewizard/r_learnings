library(ggplot2)

print('hi')

my_df <- data.frame(replicate(2,sample(0:1,200,rep=TRUE)))
print(my_df)
ggplot(my_df, aes(x=X1)) + geom_bar()
