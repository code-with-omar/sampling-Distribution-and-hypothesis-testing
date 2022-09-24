IQ<-c(2,4,3,23,25,27,28,13,15,16,20,14,35,33,32,21,35,40,42,22,33,13,17,20,25,29,27,40,38,31)
mean(IQ)
var(IQ)
length(IQ)

set.seed(1246)
x<-sample(IQ, 10 ,replace=TRUE)
x
mean(x)#Point estimate

#interval estimate 
qnorm(0.025,0.1)#-1.96

#lower class interval
21.6-(1.96*11)/sqrt(10) # 14.78213

#upper class interval
21.6+(1.96*11)/sqrt(10)# 28.41787
##95% confidence for estimation



#sampling distribution of mean#Probablity of statistic
choose(30,10)
nsample<-rep(0,300000)
for(i in 1:3000000){
  nsample[i]<-(mean(sample(IQ,10,replace=TRUE)))
}
hist(nsample)
mean(nsample)
Bias=mean(nsample)-mean(IQ)
#sampling distribution of median#
choose(30,10)
nsample<-rep(0,300000)
for(i in 1:3000000){
  nsample[i]<-(median(sample(IQ,10,replace=TRUE)))
}
hist(nsample)
mean(nsample)
Bias=median(nsample)-median(IQ)

###Efficiency check###
l1<-length(nsample)
v1<-sum((nsample-mean(IQ))^2)/l1
v1
##For medain
l2<-length(nsample)
v2<-sum((nsample)-medain(IQ))^2)/l2
v2
