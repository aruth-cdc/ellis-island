# this script tidies dataframes that were downloaded from FamilySearch

# setup ----

library(tidyverse)
library(janitor)

dat1 <- read.csv("data/search-results-4.csv")
 
# tidying ----

# remove extraneous columns

dat1 <- dat1 %>%
  select(-c(queryUrl, queryTime, score, arkId, sourceMediaType, batchNumber, chrDate, chrPlaceText, marriageLikeDate, marriageLikePlaceText, deathLikeDate, deathLikePlaceText, burialDate, burialPlaceText, collectionId, collectionName, subcollectionId, subcollectionName))