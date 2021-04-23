# Frequenze assolute e relative
campione <- read.csv("src/seconda_parte/campione_poissoniano.csv")[[1]]

print("Frequenze assolute")
table(campione)
print("Frequenze relative")
table(campione)/length(campione)
paste("Media campionaria:", mean(campione))
paste("Mediana:", median(campione))
paste("Moda:", rownames(sort(table(campione), decreasing = TRUE))[1])
paste("Varianza campionaria:", var(campione))
paste("Deviazione standard campionaria:", sd(campione))
paste("Coefficiente di variazione:", sd(campione)/abs(mean(campione)))
print("Quartili:")
quantile(campione)
boxplot(campione , col = "yellow1", horizontal = TRUE, main="Boxplot")
hist(campione, col=cm.colors(11), ylim = c(0,25), xaxt='n')
axis(side=1, at=seq(1,12,1), las=1)