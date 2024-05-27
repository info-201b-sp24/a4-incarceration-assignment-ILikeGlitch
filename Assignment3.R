install.packages("dplyr")
library("dplyr")
data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-jail-rates-1990.csv?raw=true")

# first value
average_value_black <- data %>%
  filter(year == 2017) %>%
  summarise(avg_value = mean(black_jail_pop_rate, na.rm = TRUE))

data_filtered <- data %>%
  filter(year == 2017)

highest_value_black <- data_filtered %>%
  filter(black_jail_pop_rate == max(black_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, black_jail_pop_rate)

lowest_value_black <- data_filtered %>%
  filter(black_jail_pop_rate == min(black_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, black_jail_pop_rate)

data_start <- data %>%
  filter(year == 2017)

data_end <- data %>%
  filter(year == 2014)

avg_start <- mean(data_start$black_jail_pop_rate, na.rm = TRUE)
avg_end <- mean(data_end$black_jail_pop_rate, na.rm = TRUE)

change <- avg_end - avg_start

# second value 
average_value_white <- data %>%
  filter(year == 2017) %>%
  summarise(avg_value = mean(white_jail_pop_rate, na.rm = TRUE))

highest_value_white <- data_filtered %>%
  filter(white_jail_pop_rate == max(white_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, white_jail_pop_rate)

lowest_value_white <- data_filtered %>%
  filter(white_jail_pop_rate == min(white_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, white_jail_pop_rate)

avg_start <- mean(data_start$white_jail_pop_rate, na.rm = TRUE)
avg_end <- mean(data_end$white_jail_pop_rate, na.rm = TRUE)

change <- avg_end - avg_start

# third value
average_value_latin <- data %>%
  filter(year == 2017) %>%
  summarise(avg_value = mean(latinx_jail_pop_rate, na.rm = TRUE))

highest_value_latin <- data_filtered %>%
  filter(latinx_jail_pop_rate == max(latinx_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, latinx_jail_pop_rate)

lowest_value_latin <- data_filtered %>%
  filter(latinx_jail_pop_rate == min(latinx_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, white_jail_pop_rate)

avg_start <- mean(data_start$latinx_jail_pop_rate, na.rm = TRUE)
avg_end <- mean(data_end$latinx_jail_pop_rate, na.rm = TRUE)

change <- avg_end - avg_start

# fourth value
average_value_native <- data %>%
  filter(year == 2017) %>%
  summarise(avg_value = mean(native_jail_pop_rate, na.rm = TRUE))

highest_value_native <- data_filtered %>%
  filter(native_jail_pop_rate == max(native_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, native_jail_pop_rate)

lowest_value_native <- data_filtered %>%
  filter(native_jail_pop_rate == min(native_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, native_jail_pop_rate)

avg_start <- mean(data_start$native_jail_pop_rate, na.rm = TRUE)
avg_end <- mean(data_end$native_jail_pop_rate, na.rm = TRUE)

change <- avg_end - avg_start

# fifth value 
average_value_aapi <- data %>%
  filter(year == 2017) %>%
  summarise(avg_value = mean(aapi_jail_pop_rate, na.rm = TRUE))

highest_value_aapi <- data_filtered %>%
  filter(aapi_jail_pop_rate == max(aapi_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, aapi_jail_pop_rate)

lowest_value_aapi <- data_filtered %>%
  filter(aapi_jail_pop_rate == min(aapi_jail_pop_rate, na.rm = TRUE)) %>%
  select(county_name, aapi_jail_pop_rate)

avg_start <- mean(data_start$aapi_jail_pop_rate, na.rm = TRUE)
avg_end <- mean(data_end$aapi_jail_pop_rate, na.rm = TRUE)

change <- avg_end - avg_start
