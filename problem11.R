The sample observation are 122,145,120,45,98,67,109,100,107,106,93,125,130,90,34,108,80,48,65,56.The test hypothesis at 5% level of significance that the test of median .Do you think that the median is 110?

x<-c(122,145,120,45,98,67,109,100,107,106,93,125,130,90,34,108,80,48,65,56)
alpha=0.05
md=110
y<-sum(x>md)
y
n<-sum(x!=md)
n
pvalue<-1-pbinom(y-1,n,0.5)
pvalue
# pvalue>alpha so H0 is accepted

