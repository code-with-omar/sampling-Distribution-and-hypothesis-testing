#In order to find out whether children with
#choronic diarrhea have the same average hemoglobin
#level(Hb) that is normally seen in healthy children in the same area
#, a random sample of 10 children with chonic diarrhea are selected and there
# Hb levels <g/dl) are obtained as follows:
# 12.3, 11.4, 14,2, 15.3, 14.8, 13.8, 11.1,15.1,15.8,13.2
#another random sample of 12 children with chonic diarrhea are
# 11.1, 17.2, 13.4, 15.2, 14.1, 13.0, 12.5, 11.5, 12.7, 14.5, 15.3, 14.0
# is there any differance between in mean Hb label between the two group of children??

x1<-c(12.3,11.4,14.2,15.3,14.8,13.8,11.1,15.1,15.8,13.2)
x2<-c(11.1,17.2,13.4,15.2,14.1,13.0,12.5,11.5,12.7,14.5,15.3,14.0)
s1=sd(x1)
s2=sd(x2)
s1/s2

par(mfrow=c(1,2))
qqnorm(x1,main="qq plot for x1")
qqline(x1)
qqnorm(x2,main="qq plot for x2")
qqline(x2)

n1=length(x1)
n2=length(x2)
x1.bar=mean(x1)
x2.bar=mean(x2)
x1.var=var(x1)
x2.var=var(x2)
sp=((n1-1)*x1.var+(n2-1)*x2.var)/(n1+n2-2)

t=(x1.bar-x2.bar)/sqrt(sp*(1/n1+1/n2))
alpha=0.05
t.tab=qt(alpha/2,n1+n2-2)
# H0 is accepted
