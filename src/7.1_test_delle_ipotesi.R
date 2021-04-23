# Test delle ipotesi
campione <- read.csv("src/seconda_parte/campione_poissoniano.csv")[[1]]

n <- length(campione)
media_campionaria <- mean(campione)
lambda0 <- 4
alpha <- 0.05
z_alpha = qnorm(1-alpha, mean =0, sd =1)
z_osservato = (media_campionaria - lambda0)/sqrt(lambda0/n)

print(paste("Valore di z_alpha:",z_alpha))
print(paste("Valore di z_osservato:",z_osservato))
print(paste("z_osservato < z_alpha ? ", z_osservato<z_alpha))