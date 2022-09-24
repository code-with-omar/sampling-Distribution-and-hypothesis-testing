#In order to find out whether children with chronic diarrhea have the same average hemoglobin level(Hb) that
is normally seen in healthy children in the same area, a random sample of 10 children with chronic diarrhea
are selected, and their Hb levels <g/dl) are obtained as follows: 12.3, 11.4, 14.2, 15.3, 14.8, 13.8,
11.1,15.1,15.8,13.2
Do the data provide sufficient evidence to indicate that the mean Hb level for children with chronic diarrhea
is less than the normal value of 14.6 (g/dl)? Test at 0.01 level of significance. Draw a boxplot and normal
plot for this data and comments.
T test

# H0:mu>=14
# H1:mu<14


n=10
data=c(12.3,11.4,14.2,15.3,14.8,13.8,11.1,15.1,15.8,13.2)
mu=14.6
alpha=0.01
x.bar=mean(data)
data_sd=sd(data)
# t distribution when n<30
t=(x.bar-mu)/(data_sd/sqrt(n))
ttab=qt(alpha,n-1)
# since ttab falls in accepted region
# H0 is accepted

# pvalue
pvalue=pt(t,df=n-1)
# since pvalue>alpha H0 is accepted
boxplot(data,ylab="HB level",col = "gray")
qqnorm(data,main =  "Normal Q-Q plot of Hb level")
qqline(data)
