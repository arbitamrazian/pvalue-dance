nmonte = 10000
n=100
tvals_null = rep(0,nmonte)
pvals_null = rep(0,nmonte)
tvals_alt = rep(0,nmonte)
pvals_alt = rep(0,nmonte)
for (i in seq(1,nmonte)){
  E = rnorm(n)
  C = rnorm(n)
  test = t.test(E,C)
  tvals_null[i] = test$statistic
  pvals_null[i] = test$p.value
}


for (i in seq(1,nmonte)){
  # add 0.2 to cell size for significance
  E = rnorm(n)+0.2
  C = rnorm(n)
  test = t.test(E,C)
  tvals_alt[i] = test$statistic
  pvals_alt[i] = test$p.value
}

#plot t's
x = seq(-5,5,0.1)
y = seq(0,1,0.1)
par(mfrow=c(2,1))

hist(tvals_null,freq=FALSE,100,xlim=c(-5,8),
     main="t-values under null hypothesis",
     xlab="t-values")
lines(x,dt(x,df=n-1),col="blue")
legend("topright",legend=c("samples","null hypo"),
       col=c("black","blue"), 
       lty=c(0,1), 
       lwd = c(1,1),
       pch = c(0, NA),
       pt.bg = c("white", NA),
       pt.cex = 2)

hist(pvals_null,freq=FALSE,100,xlim=c(0,1),
     main="p-values under null hypothesis",
     xlab="p-values")
lines(y,rep(1,length(y)),col="blue")
legend("topright",legend=c("samples","null hypo"),
       col=c("black","blue"), 
       lty=c(0,1), 
       lwd = c(1,1),
       pch = c(0, NA),
       pt.bg = c("white", NA),
       pt.cex = 2)


#plot p's

par(mfrow=c(2,1))

hist(tvals_alt,freq=FALSE,100,xlim=c(-5,8),
     main="t-values under alternative hypothesis",
     xlab="t-values")
lines(x,dt(x,df=n-1),col="blue")
legend("topright",legend=c("samples","null hypo"),
       col=c("black","blue"), 
       lty=c(0,1), 
       lwd = c(1,1),
       pch = c(0, NA),
       pt.bg = c("white", NA),
       pt.cex = 2)

hist(pvals_alt,freq=FALSE,100,xlim=c(0,1),
     main="p-values under alternative hypothesis",
     xlab="p-values")
lines(y,rep(1,length(y)),col="blue")
legend("topright",legend=c("samples","null hypo"),
       col=c("black","blue"), 
       lty=c(0,1), 
       lwd = c(1,1),
       pch = c(0, NA),
       pt.bg = c("white", NA),
       pt.cex = 2)


