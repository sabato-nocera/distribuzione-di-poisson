par(mfrow=c(3,2))
x <- 1:25
lambda <- 5.2
plot(x, dpois(x, lambda), xlab="x", ylab="Probabilità", type ="h", main="lambda=5")

simulazione_0 <- rpois (50 , lambda)
simulazione_1 <- rpois (500 , lambda)
simulazione_2 <- rpois (5000 , lambda)
simulazione_3 <- rpois (50000 , lambda)

plot.new()
plot(table(simulazione_0)/length(simulazione_0), xlab="x",type="h", ylab="Frequenza relativa", main="lambda=5.2, N=50")
plot(table(simulazione_1)/length(simulazione_1), xlab="x",type="h", ylab="Frequenza relativa", main="lambda=5.2, N=500")
plot(table(simulazione_2)/length(simulazione_2), xlab="x",type="h", ylab="Frequenza relativa", main="lambda=5.2, N=5000")
plot(table(simulazione_3)/length(simulazione_3), xlab="x",type="h", ylab="Frequenza relativa", main="lambda=5.2, N=50000")