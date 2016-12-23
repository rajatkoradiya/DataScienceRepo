complete <- function(directory, id = 1:332){
    
    ##get the list of all the files form that directory
    all_files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    
    #empty data frame
    dataFrm <- data.frame()
    
    ##loop through file and add value to the data frame
    for(i in id){
        data <- read.csv(all_files[i], header = TRUE)
        dataFrm <- c(dataFrm, rbind(i, sum(complete.cases(data))))
    }
    dataFrm
}

complete("E:/Personal/data science/R programming/excercise/week-2/specdata", 3)
