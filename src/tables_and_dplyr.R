library(dplyr)
data("band_instruments") #note that band_instruments writes a dataframe called band_instruments into the global environment
str(band_instruments)

band_instruments <- data.frame(apply(band_instruments, 2, as.factor))
str(band_instruments)
levels(band_instruments$plays) # fetches the different levels of the factor
band_instruments$plays <- recode(band_instruments$plays, "bass" = 1, "guitar" = 2)
str(band_instruments)

# Tables
data("band_instruments")
table(band_instruments)
table(band_instruments$plays)

library(ggplot2)
diamonds %>%
  group_by(cut, color, clarity) %>%
  summarise(n())

diamonds %>%
  group_by(cut) %>%
  summarise(mean = mean(price), median = median(price))