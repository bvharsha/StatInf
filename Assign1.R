n <- 40
sim <- 1000
lambda <- 0.2

data <- replicate(sim, rexp(n, lambda))

nrow(data)
ncol(data)
head(data)
summary(data)

data_with_mn <- rbind(data, colMean(data))

nrow(data_with_mn)

sample_means <- data_with_mn[41,]

thmean <- 1/lambda

thsd <- (1/lambda)/sqrt(n)

calcmean <- mean(sample_means)
calcsd <- sd(sample_means)

x <- seq(min(sample_means), max(sample_means), length=100)
y <- dnorm(x, mean=1/lambda, sd=(1/lambda/sqrt(n)))

##hist(sample_means, freq = F, breaks = n)
##lines(x, y, pch=15, col="red", lty=5)
