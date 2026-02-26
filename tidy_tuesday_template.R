# ==========================================================
# TIDY TUESDAY WORKFLOW TEMPLATE
# ==========================================================

# 1. Load Libraries ------------------------------------------------------

library(tidyverse)
library(janitor)
library(scales)


# 2. Import Data ---------------------------------------------------------

# Replace with actual Tidy Tuesday URL
data_raw <- read_csv("DATA_URL_HERE")


# 3. Clean Data ----------------------------------------------------------

data_clean <- data_raw %>%
  clean_names() %>%
  mutate(across(where(is.character), str_trim))


# 4. Exploratory Checks --------------------------------------------------

glimpse(data_clean)
summary(data_clean)


# 5. Create Analysis Dataset ---------------------------------------------

analysis_data <- data_clean %>%
  # Your transformations here
  group_by(variable) %>%
  summarise(count = n())


# 6. Create Plot ---------------------------------------------------------

plot_1 <- ggplot(analysis_data, aes(x = variable, y = count)) +
  geom_col(fill = "#2C7FB8") +
  theme_minimal()


# 7. Save Plot -----------------------------------------------------------

ggsave("plot_1.png",
       plot = plot_1,
       width = 8,
       height = 6,
       dpi = 600)















