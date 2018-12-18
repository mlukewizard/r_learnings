library(ggplot2)


mean(round(diamonds$x, 2))

# is equivalent to:

diamonds$x %>%
  round(2) %>%
  mean()