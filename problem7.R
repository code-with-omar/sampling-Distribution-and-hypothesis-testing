#The 126 people have some doing smoking and some do not smoke. Some of this type of data are tabulated is
#given below:
#indepence test/chi_squre test
M=matrix(c(55,16,23,32),ncol = 2,byrow = TRUE)
alpha=0.05
chisq.test(M)
# pavlue<alpha,so H0 is rejected