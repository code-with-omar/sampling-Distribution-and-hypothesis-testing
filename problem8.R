#There are two COVID-19 testing booths, we test some people and their recorded data is below, where the
numbers of people of booth-1 are 11 and the numbers of people of booth-2 are 10:
  Booth-1: positive, positive, negative, positive, negative, negative, positive, positive, positive, negative,
positive.
Both-2: negative, negative, negative, positive, positive, negative, positive, negative, negative, negative.
Is there any relation between two both???
#H0:there is no relation between booth-1 and booth-2
#H1:There is relation between booth-1 and booth-2

booth_1<- c("positive","positive", "negative","positive", "negative", "negative", "positive","positive","positive", "negative", "positive")
booth_2<- c("negative", "negative", "negative", "positive", "positive", "negative", "positive", "negative", "negative", "negative")
table1_x=table(booth_1)
table2_x=table(booth_2)

m=matrix(c(7,4,3,7),ncol = 2,byrow = TRUE,dimnames = list(c("Booth-1","Booth-2"),c("positive","negative")))
m
c1=sum(m[,1])
c1
c2=sum(m[,2])
c2
r1=sum(m[1,])
r1
r2=sum(m[2,])
r2
n=sum(m)
n
E11=(c1*r1)/n
E11
E12=(c2*r1)/n
E12
E21=(c1*r2)/n
E21
E22=(c2*r2)/n
E22

# E21 is less than 5 so we need to do "Yates" continuity correction
chi_yates=(((abs(m[1]-E11)-0.5)^2)/E11)+(((abs(m[2]-E21)-0.5)^2)/E21)+ ((abs(m[3]-E12)-0.5)^2/E12) + ((abs(m[4]-E22)-0.5)^2/E22)
# df=(r-1)(c-1)
alpha=0.05
chi_tab=qchisq(alpha,1,lower.tail = FALSE)
# chi_tab>chi_yates so H0 is accepted
chi_tab

pvalue=pchisq(chi_yates,1,lower.tail = FALSE)
# pvalue>alpha so H0 is accepted
p_value


