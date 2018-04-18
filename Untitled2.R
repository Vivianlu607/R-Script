#show.legend 旁邊標示
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),show.legend = TRUE)

#show.legend 旁邊標示
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),show.legend = FALSE)


#se 線後陰影
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),se = FALSE)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 2))


ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/2, position = "identity")

library(ggplot2)
library(tidyverse)
demo <- tribble(
  ~cut,         ~freq,
  "Fair",       1610,
  "Good",       4906,
  "Very Good",  12082,
  "Premium",    13791,
  "Ideal",      21551
)


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut), stat = "identity")

ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))

  stat_count(mapping = aes(x = cut))
ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut, y = freq), stat = "identity")
ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut, y = freq), stat = "count")


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()



deal_final <- tbl(Impala365, "deal_final")
x <- deal_line_final %>%
  filter(store_name == "[0828]胜和店") %>%
  collect()


x2 <- deal_line_final %>%
  filter(store_name == "[0828]胜和店") %>%
  show_query()