pollutantmean <- function(directory, pollutant, id = 1:332){
    #directory is the path where the data is stored in the file system
    #pollutant is either sulphate or nitrate
    #id is the measure machine id
    
    ##get the file path of the all the files in the vector
    all_files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    
    ## create a empty numeric vector
    values <- numeric()
    
    ## loop through the vector id and calculae store the all value of pollutant to the vector value
    for(i in id){
        data <- read.csv(all_files[i], header = TRUE)
        values <- c(values, data[[pollutant]])
    }
    mean(values, na.rm = T)
}

pollutantmean("E:/Personal/data science/R programming/excercise/week-2/specdata", "sulfate", 1:10)
pollutantmean("E:/Personal/data science/R programming/excercise/week-2/specdata", "nitrate", 70:72)
pollutantmean("E:/Personal/data science/R programming/excercise/week-2/specdata", "nitrate", 23)
