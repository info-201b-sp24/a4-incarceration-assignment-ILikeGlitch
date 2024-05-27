install.packages("dplyr")
install.packages("ggplot2")
library("dplyr")
library("ggplot2")
data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-jail-rates-1990.csv?raw=true")

top_counties <- data %>%
  group_by(county_name) %>%
  summarise(avg_value = mean(black_jail_pop_rate, na.rm = TRUE)) %>%
  arrange(desc(avg_value)) %>%
  head(5) %>%
  pull(county_name)

filtered_data <- data %>%
  filter(county_name %in% top_counties)

trend_data <- filtered_data %>%
  group_by(year, county_name) %>%
  summarise(avg_value = mean(black_jail_pop_rate, na.rm = TRUE))

ggplot(trend_data, aes(x = year, y = avg_rate, color = county_name)) +
  geom_line() +
  geom_point() +
  labs(title = "The average of Black People in jail for Top 5 Counties",
       x = "Year",
       y = "Average Value",
       color = "County") +
  theme_minimal()
