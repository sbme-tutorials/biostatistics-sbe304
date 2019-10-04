#' Mutations along the genome of HIV (Human Immunodeficiency Virus) 
#' occur at random with a rate of 5 × 10e−4 per nucleotide per 
#' replication cycle. This means that after one cycle, 
#' the number of mutations in a genome of about 10e4 = 10,000 nucleotides 
#' will follow a Poisson distribution with rate 5.

#' 1. What is the probability mass distribution of observing 0 : 12 mutations
#' in a genome of n = 10e4 nucleotides, when the probability 
#' is p = 5 × 10e−4 per nuceotide? Is it similar when modeled by the
#' binomial b(n, p) distribution and by the Poisson (λ = np) distribution ?
mutation_pois = dpois(0:12, 5)
mutation_binom = dbinom(0:12, 10000, 0.0005)

#' Let's google on how to visualize 
#' two barplot side-by-side to facilitate comparison
#' good answer: https://stackoverflow.com/a/36968702
#' One way from the answer
mutation_rates = cbind( mutation_pois, mutation_binom)
barplot(mutation_rates,beside=T) # did you say that `T` is alias to `TRUE`?!

#' Another way from the answer
mutation_rates = rbind( mutation_pois, mutation_binom)
barplot(mutation_rates,beside=T) # did you say that `T` is alias to `TRUE`?!

#' Important realization that Poisson is a good approximation
#' to the Binomial distribution in this case.

#' 2. Simulate a mutation process along 10,000 positions with a mutation 
#' rate of 5 × 10e−4 and count the number of mutations. 
#' Repeat this many times (e.g 300000) and plot the 
#' distribution with the `barplot`
#' function.

mutation_simulation = rpois(300000,5)

#' Plot using histograms
hist(mutation_simulation)
