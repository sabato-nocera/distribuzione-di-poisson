x <- 1:25
par(mfrow=c(3,2))
colors = palette.colors(6)
plot(x, dpois(x, 0), main = paste("Funzione di probabilità di Poisson con lambda =",0), xlab="x",ylab="P(X=x)",type ="h", col = colors[1])
plot(x, dpois(x, 1), main = paste("Funzione di probabilità di Poisson con lambda =",1), xlab="x",ylab="P(X=x)",type ="h", col = colors[2])
plot(x, dpois(x, 2), main = paste("Funzione di probabilità di Poisson con lambda =",2), xlab="x",ylab="P(X=x)",type ="h", col = colors[3])
plot(x, dpois(x, 3), main = paste("Funzione di probabilità di Poisson con lambda =",3), xlab="x",ylab="P(X=x)",type ="h", col = colors[4])
plot(x, dpois(x, 5.2), main = paste("Funzione di probabilità di Poisson con lambda =",5.2), xlab="x",ylab="P(X=x)",type ="h", col = colors[5])
plot(x, dpois(x, 10.8), main = paste("Funzione di probabilità di Poisson con lambda =",10.8), xlab="x",ylab="P(X=x)",type ="h", col = colors[6])