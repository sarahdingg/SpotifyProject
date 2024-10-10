#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 26 September 2024 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(testthat)

#### Workspace setup ####
library(tidyverse)


#### Multiple linear regeression model ####
radioheadclean <- readRDS("data/02-analysis_data/radioheadclean")

radioheadclean$tempo <- as.numeric(radioheadclean$tempo)
radioheadclean$danceability <- as.numeric(radioheadclean$danceability)
radioheadclean$valence <- as.numeric(radiohead$valence)

analysis_model_1 <- lm(danceability ~ tempo, data = radioheadclean)
analysis_model_2 <- lm(danceability ~ valence, data = radioheadclean)

summary(analysis_model_1)
summary(analysis_model_2)

#### Plot linear regression models ####
library(ggplot2)

ggplot(radioheadclean, aes (x=tempo, y=danceability)) + 
  geom_point() + 
  geom_smooth(method="lm", se = FALSE) +
  labs(title = "Model 1: Danceability vs. Tempo")
ggplot(radioheadclean, aes (x=valence, y=danceability)) + 
  geom_point() + 
  geom_smooth(method="lm", se = FALSE) +
  labs(title = "Model 2: Danceability vs. Valence")
