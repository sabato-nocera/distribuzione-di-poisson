# Metodo di pivot in forma approssimata
campione <- read.csv("src/seconda_parte/campione_poissoniano.csv")[[1]]

alpha <- 1-0.95

z_alpha <- qnorm(1-alpha/2, mean =0, sd=1)
media_campionaria <- mean(campione)
n <- length(campione)

a2 <- n
a1 <- -(2 * n * media_campionaria + z_alpha^2)
a0 <- n * media_campionaria^2

radici <- polyroot(c(a0 ,a1 ,a2))

print(paste("Lunghezza campione:",n))
print(paste("Valore della media campionaria:",media_campionaria))
print(paste("Valore di alpha:", alpha))
print(paste("Valore di z_alpha:",z_alpha))
print(paste("Valore di a0:",a0))
print(paste("Valore di a1:",a1))
print(paste("Valore di a2:",a2))
print("Intervallo di confidenza approssimato (grado 0.95):")
radici

(media_campionaria - z_alpha * sqrt( media_campionaria /n))
(media_campionaria + z_alpha * sqrt( media_campionaria /n))