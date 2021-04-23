# Test delle ipotesi
campione <- read.csv("src/seconda_parte/campione_poissoniano.csv")[[1]]

n <- length(campione)
print(paste("Lunghezza campione:", n))
frequenze_assolute <- table(campione)
print("Frequenze assolute:")
frequenze_assolute

media_campionaria <- mean(campione)
print(paste("Media campionaria:", media_campionaria))

n_elementi_sottoinsiemi <- numeric(7)
n_elementi_sottoinsiemi[1] <- length(which(campione == 0)) +
  length(which(campione == 1)) +
  length(which(campione == 2))
n_elementi_sottoinsiemi[2] <- length(which(campione == 3))
n_elementi_sottoinsiemi[3] <- length(which(campione == 4))
n_elementi_sottoinsiemi[4] <- length(which(campione == 5))
n_elementi_sottoinsiemi[5] <- length(which(campione == 6))
n_elementi_sottoinsiemi[6] <- length(which(campione == 7))
n_elementi_sottoinsiemi[7] <- length(which(campione >= 8))

print("Numero di elementi per ciascun sottoinsieme:")
n_elementi_sottoinsiemi
print("Somma del numero di elementi di ciascun sottoinsieme:")
sum(n_elementi_sottoinsiemi)

p <- numeric(7)
p[1] <- dpois(0, media_campionaria) +
  dpois(1, media_campionaria) +
  dpois(2, media_campionaria)
p[2] <- dpois(3, media_campionaria)
p[3] <- dpois(4, media_campionaria)
p[4] <- dpois(5, media_campionaria)
p[5] <- dpois(6, media_campionaria)
p[6] <- dpois(7, media_campionaria)
p[7] <- 1 - sum(p[1:6])

print("Probabilità associate agli intervalli:")
round(p, 3)
print("Somma delle probabilità associate agli intervalli:")
sum(p)

min(n * p[1], n * p[2], n * p[3], n * p[4], n * p[5], n * p[6], n * p[7])

chi2 <- sum(((n_elementi_sottoinsiemi - n * 0.2) / sqrt(n * 0.2))^2)
chi2

r <- 7
k <- 1
alpha <- 0.0001
qchisq(alpha / 2, df = r - k - 1)
qchisq(1 - alpha / 2, df = r - k - 1)