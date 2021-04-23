# Confronto popolazioni
campione_x <- read.csv("src/seconda_parte/campione_poissoniano.csv")[[1]]
campione_y <- rpois(100 , 3.5)

table(campione_x)
table(campione_y)

alpha <- 1-0.99
z_alpha <- qnorm(1-alpha/2, mean =0, sd=1)
n1 <- length(campione_x)
n2 <- length(campione_y)
media_campionaria_1 <- mean(campione_x)
media_campionaria_2 <- mean(campione_y)
radice <- sqrt(media_campionaria_1/n1 + media_campionaria_2/n2)
estremo_inferiore <- media_campionaria_1 - media_campionaria_2 - z_alpha * radice
estremo_superiore <- media_campionaria_1 - media_campionaria_2 + z_alpha * radice

print(paste("Valore di alpha:",alpha))
print(paste("Valore di z_alpha:",z_alpha))
print(paste("Lunghezza del campione x:",n1))
print(paste("Lunghezza del campione y:",n2))
print(paste("Valore della media campionaria del campione x:",media_campionaria_1))
print(paste("Valore della media campionaria del campione y:",media_campionaria_2))
print(paste("Stima dell'intervallo di confidenza (grado 0.99): (",estremo_inferiore,",",estremo_superiore,")"))