
#loading esquisse package
library(esquisse)

# function to load data
esquisser(CO2_GDPpc)



#### Using ggplot code directly
###############################

# Note: we can use # for comments in R script

## Load ggplot2
library(ggplot2)

## ------- Line plot -----

ggplot(data = Pcgdp) +
  # line above: what is the dataframe?
 aes(x = Year, y = Per_Capita_GDP) +
  # line above: what are the variables
 geom_line() 
  # line above: what geometric object?


## ---- Dot plot ----

# Dot plot is like a bar plot

ggplot(data = Poverty_state_ut) +
  # line above: what is the dataframe?
  aes(y = State_UT, x = Poverty) +
  # line above: what is the dataframe?
  geom_point() 
  # line above: what geometric object?

# Reorder the States by Poverty

ggplot(Poverty_state_ut) +
  # line above: what is the dataframe?
  aes(y = reorder(State_UT, Poverty), x = Poverty) +
  # line above: what are the variables?
  # we have used reorder()
  geom_point() 
# line above: what geometric object?


## -- Scatter plot --

ggplot(CO2_GDPpc) +
  # line above: what is the dataframe?
  aes(x = GDPpc, y = CO2) +
  # line above: what are the variables?
  geom_point()
# line above: what geometric object?


ggplot(CO2_GDPpc) +
  # line above: what is the dataframe?
  aes(x = GDPpc, y = CO2) +
  # line above: what are the variables?
  geom_point() +
  # line above: what geometric object?
  geom_rug()


