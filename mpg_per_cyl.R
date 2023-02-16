data(mtcars)
library(dplyr)
library(ggplot2)

mpg_by_cyl <- mtcars %>% 
  group_by(cyl) %>% 
  summarise(avg_mpg = mean(mpg))

ggplot(mtcars, aes(cyl, mpg)) +
  geom_point() +
  geom_smooth(colour = "blue")

ggsave("cyl_vs_mpg.pdf")
