#### Preamble ####
# Purpose: Downloads and saves the data from Spotify API
# Author: 
  - Sarah Ding
  - Jamie Lee
  - Vandan Patel
  - Prankit Bhardwaj
  - Dong Jun Yoon
# Date: 21 November 2024
# Contact: sarah.ding@mail.utoronto.ca
# License: UofT
# Pre-requisites: make sure 'spotifyr' package is installed
# Any other information needed? N/A


#### Workspace setup ####
library(spotifyr)
library(tidyverse)


#### Download data ####
radiohead <- get_artist_audio_features("radiohead")



#### Save data ####

saveRDS(radiohead, "data/01-raw_data/radiohead")
