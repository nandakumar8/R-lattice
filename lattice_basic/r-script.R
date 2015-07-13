###lattice package

###load memss library
library("MEMSS")

###load lattice
library(lattice)
library(mlmRev)
data(Oats,package="MEMSS")

XY_DATA<-xyplot(yield~nitro|Variety+Block,data=Oats,type="o")
###densityplot
densityplot(~eruptions,data=faithful,plot.points="rug",bw=0.2)
library(latticeExtra)
data(gvhd10)
densityplot(~log(FSC.H)|Days,data=gvhd10,plot.points = F)
###histogram
histogram(~log2(FSC.H)|Days,data=gvhd10,type="density")
###boxplot
data(Chem97,package="mlmRev")
bwplot(gcsescore|gender,data=Chem97,xlab="Average GCSE score",layout=c(6,1),varwidth=T)
bwplot(gcsescore^2.34~gender|factor(score),data=Chem97,xlab="Average GCSE score",layout=c(6,1),varwidth=T)

###checking test ..test

