#' First, issue "?dbinom" to see its documentation.
#' From documentaiton we now know that:
#' 1) dbinom: is actually the (propability distribution) aka `P(X = x)`
#' 2) pninom: is the cumulative function, aka `P(X >= x)= F(x)`
#' 3) rbinom: is a sampler function, used to simulate a binomial RV.
#'
#' The same applies for other distributions:
#' - dXXX
#' - pXXX
#' - rXXX
#' where XXX could be:
#' - `nbinom` for the negative binomial RVs
#' - `geom` for the geometric RVs
#' - `hyper` for the hypergeometric RVs
#' - `pois` for the poisson RVs


#' Consider an exam consists of 20 questions, each has 4 choices.
#' 
#' The probability of solving exactly 8 questions correctly:
dbinom( 8, 20, 1/4 )

#' The probability of failing the exam (at most 9):
pbinom( 9, 20, 1/4 )

#' visualize the probability distribution using `barplot` (check `?barplot`)
barplot( dbinom( 0:20, 20, 1/4), col = "red", xlab = "correct answers", ylab = "probability")


#' Simulate the examination process for 1000 students, 
#' then visualize using `hist` function. See the documentation (`?hist`)
hist(rbinom( 1000, 20, 1/4))
