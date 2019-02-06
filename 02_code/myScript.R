library(readr)
library(dplyr)
library(ggplot2)
library(forcats)

df <- read_csv("01_data/us-500.csv")

plot_data <- df %>%
  group_by(state) %>%
  count()

write_csv(plot_data, "03_output/plot_data.csv")

plot <- plot_data %>% 
  ggplot()+
  geom_col(aes(fct_reorder(state, n), 
               n, 
               fill = n))+
  coord_flip()+
  labs(
    title = "Number of people by state",
    subtitle = "From US-500 dataset",
    x = "State",
    y = "Number of people"
  )+ 
  theme_bw()

ggsave("03_output/myplot.png", width = 10, height = 8, dpi = 100)