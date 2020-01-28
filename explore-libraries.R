library(dplyr)


packages_tbl <- installed.packages() %>%
  as_tibble()

packages_tbl %>% nrow()

packages_tbl %>%
  count(LibPath, Priority)

packages_tbl %>%
  group_by(NeedsCompilation) %>%
  summarise(n())

packages_tbl %>%
  group_by(Built) %>%
  summarise(n())