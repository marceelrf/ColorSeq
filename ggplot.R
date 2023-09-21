library(tidyverse)

str_count(DNA)

# ggplot() +
#   geom_point(aes(x = 1:str_count(DNA),
#                  y = 1:str_count(DNA)))


tibble(DNA = modified_string) %>% 
  ggplot(aes(x = 1, y = 1, 
             label = DNA)) +
  geom_text() +
  theme_void()
