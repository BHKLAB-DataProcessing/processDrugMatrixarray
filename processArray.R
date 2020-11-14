library(ToxicoGx)
library(gdata)
library(affy)
library(Biobase)
library(xml2)
library(abind)
library("rat2302rnensgcdf")

cdf <- "rat2302rnensgcdf"

celfn <- list.files("/pfs/DrugMatrixArray/raw", full.names = T, "\\.CEL$")

eset <- just.rma(filenames = celfn, verbose = TRUE, cdfname = cdf)

saveRDS(eset, "/pfs/out/eset_DM.rds")
