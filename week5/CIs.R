dat <- read.csv("../data/mice_pheno.csv")
chowPopulation <- dat[dat$Sex=="F" & dat$Diet=="chow",3]

n <- 30
z <- qnorm(1- 0.05/2)
B <- 250

plot(mean(chowPopulation)+c(-7,7),c(1,1),type="n",
     xlab="weight",ylab="interval",ylim=c(1,B))
abline(v=mean(chowPopulation))

coverage <- 0
for (i in 1:B) {
  chow <- sample(chowPopulation,n)
  se <- sd(chow)/sqrt(n)
  interval <- c(mean(chow)-z*se, mean(chow)+z*se)
  covered <-
    mean(chowPopulation) <= interval[2] & mean(chowPopulation) >= interval[1]
  color <- ifelse(covered,1,2)
  lines(interval, c(i,i),col=color)
  coverage = coverage + covered
}

print( coverage / B )
