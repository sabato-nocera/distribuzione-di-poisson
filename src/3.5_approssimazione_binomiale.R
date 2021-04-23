par(mfrow = c(3, 2))
x <- 1:25
lambda <- 5.2

plot(x, dpois(x, lambda), xlab = "x", ylab = "P(X=x)", ylim = c(0, 0.20), type = "h", main = "Distribuzione di Poisson: lambda=5.2")
text(x, dpois(x, lambda) + 0.005, round(dpois(x, lambda), 3))

plot.new()

plot(x, dbinom(x, size = 10, prob = 0.52), xlab = "x", ylab = "P(X=x)", type = "h", ylim = c(0, 0.25), main = "Binomiale: n=10, p=0.52")
text(x, dbinom(x, size = 10, prob = 0.52) + 0.005, round(dbinom(x, size = 10, prob = 0.52), 3))

plot(x, dbinom(x, size = 25, prob = 0.208), xlab = "x", ylab = "P(X=x)", type = "h", ylim = c(0, 0.25), main = "Binomiale: n=25, p=0.208")
text(x, dbinom(x, size = 25, prob = 0.208) + 0.005, round(dbinom(x, size = 25, prob = 0.208), 3))

plot(x, dbinom(x, size = 50, prob = 0.104), xlab = "x", ylab = "P(X=x)", type = "h", ylim = c(0, 0.25), main = "Binomiale: n=50, p=0.104")
text(x, dbinom(x, size = 50, prob = 0.104) + 0.005, round(dbinom(x, size = 50, prob = 0.104), 3))

plot(x, dbinom(x, size = 100, prob = 0.052), xlab = "x", ylab = "P(X=x)", type = "h", ylim = c(0, 0.25), main = "Binomiale: n=100, p=0.052")
text(x, dbinom(x, size = 100, prob = 0.052) + 0.005, round(dbinom(x, size = 100, prob = 0.052), 3))
