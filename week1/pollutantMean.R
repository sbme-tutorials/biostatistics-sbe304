# Install the package for the first time. Comment after installed.
# install.packages("data.table")
library("data.table")

pollutantmean <- function(directory, pollutant) {
  #' Let's use google to see how to load csv files in a given directory
  #' answer: https://stackoverflow.com/a/23555961
  files = list.files(pattern="*.csv", path = directory, full.names = T)
  tables = rbindlist(lapply(files, fread))
  
  #' select particular column (corresponds to given pollutant element name)
  pollutant_data = tables[[ pollutant ]]
  
  #' filter out `NA` values (missing values)
  #' google answer: https://stackoverflow.com/a/4862502
  pollutant_data = pollutant_data[ complete.cases( pollutant_data)]
  
  #' return the mean
  return( mean( pollutant_data ))
}

#' Example usage
#' You must first set the demo repository folder as working directory! 
m = pollutantmean(directory = 'data/pollution_data/specdata',
                  pollutant = 'sulfate')
