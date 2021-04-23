# Generazione campione
campione <- rpois(100 , 5.2)
campione
write.csv(campione, "src/seconda_parte/campione_poissoniano.csv", row.names = FALSE)