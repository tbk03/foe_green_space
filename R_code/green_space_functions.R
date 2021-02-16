library(janitor)
library(readxl)

read_foe_data <-  function(){
  
# read the core Friends of the Earth dataset
green_space <- read_excel("../Data/(FOE) Green Space Consolidated Data - England - Version 2.1.xlsx",
                          sheet = "MSOAs V2.1") %>%
  # inconsistent naming conventions for variables are used in the source data
  # some needed to clean names for consitency (variables names are now )
  clean_names()

return(green_space)

}


read_ons_garden_data <- function() {
  
  gardens <- read_excel("../Data/osprivateoutdoorspacereferencetables.xlsx", 
                        sheet = "MSOA gardens",
                        skip = 1) %>% 
    clean_names()
  
  return(gardens)

}