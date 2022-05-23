####EXTRACTING BANDS FROM A MULTIBAND NC FILE#####

# Clear Workspace
ls()
rm(list = ls())
cat("\014")
dev.off()

install.packages("raster")
install.packages("Rcpp")
install.packages("rgdal")
install.packages("ncdf4")

library(raster)
library(Rcpp)
library(rgdal)
library(ncdf4)

file.choose()
setwd("C:\\Users\\tonyb\\OneDrive - Queen's University Belfast\\4. Research Assistant\\Q0 Model\\Monthly Data")
stack_ncs <-stack('Q0.1988.2017.monthly.nc')
plot(stack_ncs)
nlayers(stack_ncs)

for(i in 1:nlayers(stack_ncs)){
  band<-stack_ncs[[i]]
writeRaster(band,paste('band',i,'.nc', sep=''))}

##################################################################################################

##################################################################################################


##################################################################################################


##################################################################################################


####EXTRACTING BANDS FROM A MULTIBAND TIFF FILE####

# Clear Workspace
ls()
rm(list = ls())
cat("\014")
dev.off()


install.packages("raster")
install.packages("Rcpp")
install.packages("rgdal")
install.packages("rgrass7")

library(raster)
library(Rcpp)
library(rgdal)
library(rgrass7)

??rgrass7

file.choose()
setwd("C:\\Users\\tonyb\\OneDrive - Queen's University Belfast\\4. Research Assistant\\Q0 Model\\Monthly Data")
stack_tifs <-stack('Monthly  Model QO.tif')
plot(stack_tifs)
nlayers(stack_tifs)

for(i in 1:nlayers(stack_tifs)){
  band<-stack_tifs[[i]]
writeRaster(band,paste('band',i,'.tif', sep=''))}
  
