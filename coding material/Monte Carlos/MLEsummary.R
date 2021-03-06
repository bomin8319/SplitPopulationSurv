library(car)
library(Hmisc)                                                     
library(mvtnorm)
library(foreign)
library(graphics)
library(MASS)
library(lattice)
library(tseries)
library(Matrix)
library(Design)
library(msm)
library(corpcor)
library(Zelig)
Results1000<-read.dta("/Users/bomin8319/Desktop/BayesOFsurv/coding material/Monte Carlos/Mixture DGP/main.data1000.dta")
Results1500<-read.dta("/Users/bomin8319/Desktop/BayesOFsurv/coding material/Monte Carlos/Mixture DGP/main.data1500.dta")
Results2000<-read.dta("/Users/bomin8319/Desktop/BayesOFsurv/coding material/Monte Carlos/Mixture DGP/main.data2000.dta")
summary = rbind(colMeans(Results1000), colMeans(Results1500[-82,]), colMeans(Results2000[-c(36,969),]))
summary = summary[,c(11:114)]
rownames(summary)= c("1000", "1500", "2000")




summary2 = rbind(colMedians(as.matrix(Results1000)), colMedians(as.matrix(Results1500[-82,])), colMedians(as.matrix(Results2000[-c(36,969),])))
summary2 = summary2[,c(11:114)]

colnames(summary2)= colnames(summary)


Results1000<-read.dta("/Users/bomin8319/Desktop/BayesOFsurv/coding material/Monte Carlos/Regular DGP/main.data1000_2.dta")
Results1500<-read.dta("/Users/bomin8319/Desktop/BayesOFsurv/coding material/Monte Carlos/Regular DGP/main.data1500_2.dta")
Results2000<-read.dta("/Users/bomin8319/Desktop/BayesOFsurv/coding material/Monte Carlos/Regular DGP/main.data2000_2.dta")

summary = rbind(colMeans(Results1000), colMeans(Results1500), colMeans(Results2000))
summary = summary[,c(11:114)]
rownames(summary)= c("1000", "1500", "2000")
