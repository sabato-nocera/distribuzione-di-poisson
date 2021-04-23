x <- 1:25
par(mfrow=c(3,2))
colors = palette.colors(6)

plot(x, ppois(x, 0), main = paste("Funzione di distribuzione di Poisson con lambda =",0), xlab="x",ylab=expression(P(X<=x)), ylim=c(0,1) ,type ="s", col = colors[1])
plot(x, ppois(x, 1), main = paste("Funzione di distribuzione di Poisson con lambda =",1), xlab="x",ylab=expression(P(X<=x)), ylim=c(0,1) ,type ="s", col = colors[2])
plot(x, ppois(x, 2), main = paste("Funzione di distribuzione di Poisson con lambda =",2), xlab="x",ylab=expression(P(X<=x)), ylim=c(0,1) ,type ="s", col = colors[3])
plot(x, ppois(x, 3), main = paste("Funzione di distribuzione di Poisson con lambda =",3), xlab="x",ylab=expression(P(X<=x)), ylim=c(0,1) ,type ="s", col = colors[4])
plot(x, ppois(x, 5.2), main = paste("Funzione di distribuzione di Poisson con lambda =",5), xlab="x",ylab=expression(P(X<=x)), ylim=c(0,1) ,type ="s", col = colors[5])
plot(x, ppois(x, 10.8), main = paste("Funzione di distribuzione di Poisson con lambda =",10), xlab="x",ylab=expression(P(X<=x)), ylim=c(0,1) ,type ="s", col = colors[6])
