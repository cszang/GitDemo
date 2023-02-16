data(mtcars)
library(tidyverse)
mpg_by_cyl <- mtcars %>% 
  group_by(cyl) %>% 
  summarise(avg_mpg = mean(mpg))
