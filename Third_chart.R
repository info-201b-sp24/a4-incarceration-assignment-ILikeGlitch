install.packages("sf")
install.packages("maps")
install.packages("ggthemes")
library(dplyr)
library(ggplot2)
library(sf)
library(maps)
library(ggthemes)
data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-jail-rates-1990.csv?raw=true")

counties <- st_as_sf(map("county", plot = FALSE, fill = TRUE))
counties <- counties %>%
  rename(county = ID)

data$county <- tolower(data$county)

map_data <- counties %>%
  left_join(data, by = "county")

ggplot(map_data) +
  geom_sf(aes(fill = black_jail_pop_rate)) +
  scale_fill_viridis_c(name = "Black Jail Population Rate") +
  labs(title = "Geographic Distribution of Black Jail Population Rate",
       caption = "Source: US Prison Jail Rates Dataset") +
  theme_minimal() +
  theme(legend.position = "right") +
  guides(fill = guide_colorbar(title = "Black Jail Population Rate"))
