library("dplyr")
library("ggplot2")
data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-jail-rates-1990.csv?raw=true")

ggplot(data, aes(x = black_jail_pop_rate, y = white_jail_pop_rate)) +
  geom_point(alpha = 0.6) +
  labs(title = "Relationship between Black Jail Population Rate and White Jail Population Rate",
       x = "Black Jail Population Rate",
       y = "White Jail Population Rate") +
  theme_minimal()
