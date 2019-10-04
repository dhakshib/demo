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

read.csv("data/nba2018-players.csv")