#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Clean data ####
raw_data <- readRDS("SpotifyAPI/data/01-raw_data/radiohead")
cleaned_data <- raw_data %>%
  dplyr::select(danceability, valence, tempo)

head(cleaned_data)


#### Save data ####
saveRDS(cleaned_data, "SpotifyAPI/data/02-analysis_data/radioheadclean")
