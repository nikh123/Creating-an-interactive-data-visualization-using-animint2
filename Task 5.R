# Installing animint2, servr, gistr.

library(animint2)
library(servr)
library(gistr)

# Creating an interactive data visualization.
data(WorldBank, package="animint2")
tail(WorldBank)
WorldBank1975=subset(WorldBank, year==1975)
head(WorldBank1975)
scatter=ggplot()+
  geom_point(
    mapping=aes(x=life.expectancy, y=fertility.rate, color=region),
    data=WorldBank1975)
scatter
animint(scatter)

# Posting the data visualization on gist profile.

servr::httd("/private/var/folders/6c/99nx223n2t5gq2b21tbvm9hc0000gn/T/Rtmpp4R9sE/file42c43b516da3")
animint2gist(animint(scatter))

#http://bl.ocks.org/nikh123/raw/a6a015657667a04df9e8dc9f61404332/ß