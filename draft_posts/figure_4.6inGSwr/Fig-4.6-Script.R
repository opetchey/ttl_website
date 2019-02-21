# Script for Fig 4.6 in Getting Started with R
# http://www.r4all.org

# clear the decks
rm(list=ls())

# get the data (you need to customise this)
setwd()
mydata<-read.csv("")

# use tapply on the crossed design
# mean, sd and sample size
# list argument is crucial

mean.gain <- tapply(mydata$gain,
	                list(mydata$supplement, mydata$diet),
	                mean)
sd.gain <- tapply(mydata$gain,
	                list(mydata$supplement, mydata$diet),
	                sd)
n.gain <- tapply(mydata$gain,
	                list(mydata$supplement, mydata$diet),
	                length)

# Make the barplot, assigned to mids; not the col argument

mids<- barplot(mean.gain,
               beside=T, legend=T,
               xlab="Feed type",
               ylab="Weight gain",
               ylim=c(0, 35),
               col=grey(c(0, 0.3, 0.6, 1)))

# add the error bars               

arrows(mids,
	   mean.gain + sd.gain,
	   mids,
	   mean.gain - sd.gain,
	   angle=90,
	   code=3,
	   length=0.1)

# add some text, with alternating colour

text(mids, 2, paste(n.gain), col=c("white", rep("black", 3)))

# custom legend - not necessary with legend = T in barplot call

# legend("topright",
	   # legend=rownames(mean.gain),
	   # fill=grey(c(0, 0.3, 0.6, 1)))
