
###load lattice
library(lattice)

VADeaths

class(VADeaths)
methods("dotplot")

###dot plot
dotplot(VADeaths,groups=F)
dotplot(VADeaths,groups=F,layout=c(1,4),aspect=0.7,origin=0,type=c("p","h"),main="Death rates in virginia-1940",xlab="Rate")

testdata<-read.csv("C:\\Users\\Nandakumar\\Desktop\\ggplot\\internet.csv",stringsAsFactors=F,header=T)
data<-testdata[1:20,]
dotplot(Country.name~X2012,data=data,main="internet user per 100 people in 2012")

###barchart
barchart(VADeaths,groups=F,layout=c(1,4),aspect=0.7,origin=0,type=c("p","h"),main="Death rates in virginia-1940",xlab="Rate")
