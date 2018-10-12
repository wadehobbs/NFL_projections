devtools::install_github(repo = "maksimhorowitz/nflscrapR")
devtools::install_github("FantasyFootballAnalytics/ffanalytics")

library(nflscrapR)
library(ffanalytics)

#Get game ids - good reference perhaps but doesnt include game result
nfl_game_ids <- scrape_game_ids(2018)

agg_player_stats_2017 <- agg_player_season(2017)

#FROM air yards website
library(jsonlite)
df_air <- fromJSON('http://airyards.com/2017/weeks')