data(mtcars)
library(dplyr)
library(ggplot2)

mpg_by_cyl <- mtcars %>% 
  group_by(cyl) %>% 
  summarise(avg_mpg = mean(mpg))

ggplot(mtcars) +
  geom_point(aes(cyl, mpg))

ggsave("cyl_vs_mpg.pdf")
