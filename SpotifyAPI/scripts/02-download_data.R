#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(spotifyr)
library(ggplot2)
# [...UPDATE THIS...]

#### Download data ####
radiohead <- get_artist_audio_features("radiohead")
saveRDS(radiohead, "radiohead.rds")

radiohead <- as_tibble(radiohead)

radiohead |>
  mutate(album_release_date = ymd(album_release_date)) |>
  ggplot(aes(
    x = tempo,
    y = danceability,
    group = album_release_date
  )) +
  geom_boxplot() +
  geom_jitter(alpha = 0.5, width = 0.3, height = 0) +
  theme_minimal() +
  labs(
    x = "Tempo",
    y = "Danceability"
  )


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
# write_csv(raw_data, "inputs/data/raw_data.csv") 

         
