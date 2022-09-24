#A herd of 1500 steer was fed a special high protein gain for a month. A random sample of 29 was weighted
and had gained an average of 6.7 pounds. If the sd of weight gain for the entire herd is 7.1. Test the
hypothsis at 5% level of significance that the average weight gain per steer for the month was more than 5
pounds. Also comments on the test using the p-value. Create the confidence interval

# H0:mu<=5
# H1:mu>5
x.bar=6.7
x.bar
sd=7.1
sd
alpha=0.05
alpha
mu=5
mu
n=29
n
z=(x.bar-mu)/(sd/sqrt(n))
z
ztab=qnorm(alpha,lower.tail = FALSE)
ztab
# since Ztab>z ,so H0 is accepted

# pvalue
pvalue=pnorm(z,lower.tail = FALSE)
pvalue
# since pvalue>alpha,so H0 is accepted

# mu is not equal 5
ztab1=qnorm(alpha/2)
ztab2=qnorm(1-alpha/2)

# pvalue
p.value=2*pnorm(z,lower.tail = FALSE)
# confidence interval find 
CI=c(x.bar+ztab1*sd/sqrt(n),x.bar+ztab2*sd/sqrt(n)) 
CI

