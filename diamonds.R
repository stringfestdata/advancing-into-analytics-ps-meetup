# Do this once
# install.packages('tidyverse')

# "Open the app"
library(tidyverse)

# Borrow a tidyverse dataset
diamonds

## Explore the dataset

# Spreadsheet-like viewer
View(diamonds)

# Print first rows
head(diamonds)

# Stats are R's jam
summary(diamonds)

# "Get me the average price 
# for each cut, sorted 
# from high to low." 

diamonds %>% 
  group_by(cut) %>% 
  summarise(avg_price = mean(price)) %>% 
  arrange(desc(avg_price))
