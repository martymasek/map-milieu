# 2016 political party registration and voting results

## California ------------------------------------------------------------------
### get shapefile
download_unzip(file_url = 'https://statewidedatabase.org/pub/data/G16/state/srprec_state_g16_v01_shp.zip',
               dest_path = 'input/data/shapefiles/ca')
download_unzip(file_url = 'https://statewidedatabase.org/pub/data/G16/state/state_g16_registration_by_g16_srprec.zip',
               dest_path = 'input/data/politics/ca')
download_unzip(file_url = 'https://statewidedatabase.org/pub/data/G16/state/state_g16_voters_by_g16_srprec.zip',
               dest_path = 'input/data/politics/ca')

### 
ca_shp_16 <- sf::read_sf('input/data/shapefiles/ca/srprec_state_g16_v01_shp/srprec_state_g16_v01.shp') |>
  janitor::clean_names()
ca_reg_16 <- read.csv('input/data/politics/ca/state_g16_registration_by_g16_srprec/state_g16_registration_by_g16_srprec.csv') |>
  janitor::clean_names()
ca_vot_16 <- read.csv('input/data/politics/ca/state_g16_voters_by_g16_srprec/state_g16_voters_by_g16_srprec.csv') |>
  janitor::clean_names()

# length(intersect(ca_reg_16$srprec_key, ca_shp_16$srprec_key))
# 
# length(setdiff(ca_reg_16$srprec_key, ca_shp_16$srprec_key))
# setdiff(ca_reg_16$srprec_key, ca_shp_16$srprec_key)
# 
# length(setdiff(ca_shp_16$srprec_key, ca_reg_16$srprec_key))
# setdiff(ca_shp_16$srprec_key, ca_reg_16$srprec_key)

