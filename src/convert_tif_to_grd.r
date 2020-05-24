library(raster)

setwd('/Users/tobias/GitHub/workshops/ggbc_slw_neic/spatial_r_workshop/')
species_ranges=list.files('./data/Present_Natural/')

for (i in species_ranges){
  species_raster=raster(sprintf('./data/Present_Natural/%s',i))
  new_file = gsub(".tif", ".grd", i)
  new_path = sprintf('./data/present_natural_converted/%s',new_file)
  writeRaster(species_raster, new_path, overwrite=TRUE,format='raster')
  }



test_raster = raster('./data/Present_Natural/Abditomys_latidens.tif')
test_raster
writeRaster(test_raster, './data/aaa.grd', overwrite=TRUE,format='raster')


