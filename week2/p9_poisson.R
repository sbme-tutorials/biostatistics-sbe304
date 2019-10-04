#' Whenever we note that we keep needing a certain sequence of commands, 
#' it’s good to put them into a function. The function body contains 
#' the instructions that we want to do over and over again, the function 
#' arguments take those things that we may want to vary. Write a 
#' function to compute the probability of having a maximum as big 
#' as `m` when looking across `n` Poisson variables with rate `lambda` .

n_rv_larger = function( m, n, lambda){
  #' P( at least one of n RV > m) = 1 - P(all of n RV < m)
  p = 1 - bpois( m , lambda)**n
  p # no need to write explicit return(p)
}