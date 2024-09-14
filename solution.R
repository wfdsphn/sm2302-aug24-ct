library(tidyverse)

## ---- Part 1 -----------------------------------------------------------------
sim_proj <- function(u, theta, h, n) {
  g <- 9.81
  theta <- theta*pi/180 # convert degrees to radians
  
  # calculating initial speeds
  vx <- u*cos(theta) # vertical
  vy <- u*sin(theta) # horizontal
  
  # calculating time when reaches the ground
  quad <- function(a, b, c)
  {
    a <- as.complex(a)
    answer <- c((-b + sqrt(b^2 - 4 * a * c)) / (2 * a),
                (-b - sqrt(b^2 - 4 * a * c)) / (2 * a))
    if(all(Im(answer) == 0)) answer <- Re(answer)
    if(answer[1] > answer[2] & answer[1]>0) return(answer[1])
    if(answer[1] < answer[2] & answer[2]>0) return(answer[2])
    if(answer[1] == answer[2]) return(answer[1])
    answer
  }
  
  timeOfFlight <- quad(g*-0.5,vy,h)

  ts <- seq(0, timeOfFlight, length.out=n)
  x <- sapply(ts, function(x) vx*x)
  y <- sapply(ts, function(x) h+vy*x-0.5*x^2*g)
  vxt <- rep(vx, length(ts))
  vyt <- sapply(ts, function(x) vy-g*x)
  
  return(data.frame("t"=ts,x,y,"vx"=vxt,"vy"=vyt))
}

sim_proj(10, 30, 0, 10)

## ---- Part 2 -----------------------------------------------------------------
library(dplyr)
nba_stats <- read.csv("NBA Stats 202324 All Stats  NBA Player Props Tool (4).csv")

top_players <- nba_stats|>
  filter(GP>10) |>
  arrange(desc(PPG)) |> 
  select(NAME, TEAM, POS, GP, PPG)

avg_min_by_pos <- nba_stats|>
  group_by(POS) %>%
  mutate(AvgMPG = mean(MPG)) %>%
  select(POS, AvgMPG) %>%
  distinct()

high_eff <- nba_stats |> 
  mutate(Efficiency = PPG/USG.) |>
  filter(Efficiency > 0.5) |>
  select(NAME, TEAM, PPG, USG., Efficiency) 
colnames(high_eff) <- c("NAME", "TEAM", "PPG", "USG.", "Efficiency")
