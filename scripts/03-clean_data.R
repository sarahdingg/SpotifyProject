#### Preamble ####
# Purpose: Cleans the raw data obtained from Spotify API
# Author: 
  - Sarah Ding
  - Jamie Lee
  - Vandan Patel
  - Prankit Bhardwaj
  - Dong Jun Yoon
# Date: 21 November 2024
# Contact: sarah.ding@mail.utoronto.ca
# License: UofT
# Pre-requisites: make sure raw data is saved
# Any other information needed? N/A

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
