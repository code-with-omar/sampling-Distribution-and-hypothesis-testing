s<-2:12
s
A<-c(1:6,5:1)
A
ps<-c(1:6,5:1)/36
ps
ES<-sum(s*ps)
ES
vars<-sum((s-c(ES))^2*ps)
##plot distribution of s
barplot(ps,ylim=c(0,0.2),
        ylab="Probability",
        xlab="s",
        col="steelblue",
        space=0,
        main="Sum of two dice rolls")
##plot distribution of D
probablity<-rep(1/6,6)
names(probablity)<-1.6
barplot(probablity,
        ylim=c(0,0.2),
        xlab = "D",
        col = "steelblue",
        space=0,
        main="Outcomes of a single dice roll")

