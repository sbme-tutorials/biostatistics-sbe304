# install.packages("data.table")
library("data.table")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  # Format number with fixed width and then append .csv to number

  # Reading in all files and making a large data.table
 
}

# Example usage
m = pollutantmean(directory = 'data/pollution_data/specdata', pollutant = 'sulfate', id = 20)