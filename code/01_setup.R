# packages ---------------------------------------------------------------------
library(tidyverse)
library(glue)
library(sf)

# set values -------------------------------------------------------------------
## specify coordinate reference system
crs_desired <- 3857


# custom functions -------------------------------------------------------------
# make function to download zipped file, unzip, and delete original zipped version
download_unzip <- function(file_url,
                           dest_path) {
  file_name <- file_url |> strsplit('/') |> unlist() |> tail(1)
  
  
  download.file(file_url,
                destfile = glue('{dest_path}/{file_name}'))
  
  unzip(zipfile = glue('{dest_path}/{file_name}'),
        overwrite = TRUE,
        exdir = glue('{dest_path}/{gsub(".zip","",file_name)}'))
  
  file.remove(glue('{dest_path}/{file_name}'))
}
