#'
#' Generate 100 instances of a Poisson(3) random variable. 
#' What is the mean? What is the variance as
#' computed by the R function `var`` ?

sample = rpois(100, 5)
mean( sample )
var( sample )
