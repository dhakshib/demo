# ===================================================================
# Title: Descriptive Analysis
# Description:
#   This script computes descriptive statistics, as well as 
#   various exploratory data visualizations.
# Input(s): data file 'nba2018-players.csv'
# Output(s): summary data files, and plots
# Author: Dhakshi Balakumar
# Date: 10-3-2019
# ===================================================================

# packages
library(dplyr)    # data wrangling
library(ggplot2)  # graphics

# Use read.csv() to import the data nba2018-players.csv in R. Do 
# this by specifying a relative path.
dat <- read.csv("data/nba2018-players.csv")

# Use the imported table to create a data frame warriors by selecting 
# rows---e.g. filter()---of Golden State Warriors, arranging rows by 
# salary in increasing order.
warriors <- arrange(dat, salary)

# Use the function write.csv() to export (or save) the data frame 
# warriors to a data file warriors.csv in the data/ directory. You 
# will need to use a relative path to specify the file argument. 
# Also, see how to use the argument row.names to avoid including a 
# first column of numbers.
write.csv(warriors, file = "warriors.csv", row.names = FALSE)

# Export the output of str() on the data frame with all the players.
sink(file = "../outputs/data-structure.txt")
str(dat$player)
sink()