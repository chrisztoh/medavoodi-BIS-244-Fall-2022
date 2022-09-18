#Christopher Toh Assignment2.R

us_states <- read.csv("us-states.csv")
install.packages("dplyr")
library("dplyr")
us_states = filter(us_states, state == "Pennsylvania")

x <- "incr_cases"
y <- "incr_deaths"

mutate(us_states,cases_day_before = lag(cases))
as.incr_cases <- mutate(us_states,incr_cases = (cases-lag(cases)))

mutate(us_states, deaths_day_before = lag(deaths))
as.incr_deaths <- mutate(us_states,incr_deaths = (deaths-lag(deaths)))

print(sd(us_states$x, na.rm=TRUE))