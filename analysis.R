# ----------------------------------
# IPL Data Analysis (R)
# ----------------------------------

library(readxl)
library(dplyr)
library(ggplot2)
library(fitdistrplus)

# Load datasets
ball <- read_excel("ipl_ball_by_ball.xlsx")
salary <- read_excel("ipl_salary_data.xlsx")
match <- read.csv("ipl_matches.csv")

# ----------------------------------
# Data Preprocessing
# ----------------------------------

summary(ball)
sum(is.na(match))

match <- na.omit(match)

# ----------------------------------
# Top Run Getters
# ----------------------------------

top_runs <- ball %>%
  group_by(Season, batter) %>%
  summarise(total_runs = sum(batsman_run)) %>%
  arrange(Season, desc(total_runs))

head(top_runs)

# ----------------------------------
# Wicket Analysis
# ----------------------------------

wickets <- ball %>%
  group_by(Season, bowler) %>%
  summarise(total_wickets = sum(isWicketDelivery))

head(wickets)

# ----------------------------------
# Recent Seasons
# ----------------------------------

recent <- ball %>%
  arrange(desc(Season)) %>%
  head(10000)

# ----------------------------------
# Distribution Fitting (Runs)
# ----------------------------------

fit_runs <- fitdist(recent$batsman_run, "norm")
plot(fit_runs)

# ----------------------------------
# Distribution Fitting (Wickets)
# ----------------------------------

fit_wkts <- fitdist(recent$isWicketDelivery, "norm")
plot(fit_wkts)

# ----------------------------------
# Salary Analysis
# ----------------------------------

correlation <- cor(salary[, c("Runs","Matches","Sixes","Final Price")])
print(correlation)

ggplot(salary, aes(x = Runs, y = `Final Price`)) +
  geom_point() +
  ggtitle("Runs vs Salary")
