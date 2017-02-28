# packages needed
library(stringr)
library(plyr)
library(dplyr)
library(tidyr)
library(ggplot2)

# read data into R
under2012=read.csv("Data/Raw_data/under2012.csv",stringsAsFactors=F)
envi = read.csv("Data/Raw_data/envi.csv")

# data clean: you should clean your data with scripts instead of doing it 
# in Excel. By using scripts, you recorded all of your history about data 
# clean. You should also make comments about why you changed your data.
# names(under2012)
under2012$Genera=str_trim(under2012$Genera) #remove spaces before and after sp.names.
under2012$species=str_trim(under2012$species) 
under2012[under2012$species=="sp",]$species="spp" # change sp to spp
under2012$sp=paste(under2012$Genera,under2012$species) # combine genus and sp
# sort(unique(under2012$sp))

## correct sp names' typo and errors
under2012[under2012$sp=="Accer rubrum",]$sp="Acer rubrum"
under2012[under2012$sp=="Acrtostaphylos uva-ursi",]$sp="Arctostaphylos uva-ursi"
under2012[under2012$sp=="Carex pennsylvanica",]$sp="Carex pensylvanica"

# remove columns we do not need
under2012 = under2012[c("Plot", "Transect", "Quadrat", "sp", "Count")]
under2012$Count[is.na(under2012$Count)] = 1 # replace NA with 1.

## analysis ---------------------

# how many sp each site has?
sprich = ddply(under2012, .(Plot), summarize, sprich = length(unique(sp)))
meansprich = mean(sprich$sprich)

# relationship between sprich and envi?
envi.long = gather(data = envi, key = envi, value = value, -Plot) 
    # wide table to long table
envi.sprich = merge(envi.long, sprich, by = "Plot")

envi.aov = aov(sprich ~ pH + shade, data = merge(envi, sprich, by = "Plot"))

# plot it
pl = ggplot(data = envi.sprich, aes(x = value, y = sprich)) +
  geom_point() + geom_smooth(method = "lm") +
  facet_wrap(~envi, scales = "free_x") + theme_bw()
ggsave(filename = "Figs/plot.pdf", pl, width = 6, height = 6, units = "in")
