# aggregate csv into one using file name as a column


library(plyr)
library(readr)
library(purrr)

setwd("/Users/gokam/Downloads/test/")





Tbl <- list.files(path = "./",
                  pattern="*.csv", 
                  full.names = T) %>% 
  map_df(function(x) read_csv(x, col_types = cols(.default = "c")) %>% mutate(filename=gsub(".csv","",basename(x)))) 


View(Tbl)
