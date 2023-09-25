library(tidyverse)

str_count(DNA)

# ggplot() +
#   geom_point(aes(x = 1:str_count(DNA),
#                  y = 1:str_count(DNA)))


tibble(DNA = breakSeqs(DNA,250)) %>% 
  ggplot(aes(x = 1, y = 1, 
             label = DNA)) +
  geom_text(size = 2) +
  theme_void()

library(ggtext)
tibble(DNA = seqTrim(DNA,from = 1,to = 1000)) %>% 
  mutate(DNA = breakSeqs(DNA,100)) %>% 
  mutate(DNA = seqModifyHTML(DNA, "TGCCTCAGCTCCTCAGTGCACA", color = "red")) %>% 
  mutate(DNA = seqModifyHTML(DNA, "TCCTGGCTTCCCAGTGGGCTC", color = "red")) %>% 
  ggplot(aes(x = 1, y = 1, 
             label = DNA)) +
  geom_richtext(size = 5) +
  theme_void()
  