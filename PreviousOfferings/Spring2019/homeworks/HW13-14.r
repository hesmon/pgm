# by Fahimeh Palizban
rm(list=ls())
library(aphid)
library(ape)
parseAlignment <- function(alignmentFile) {
  alignment <- scan(file=alignmentFile, what=character(0))   
  # Split rows and convert to matrix
  alignment.mat <- matrix(nrow=length(alignment), ncol=nchar(alignment[[1]]))
  for(i in 1:length(alignment)) {
    alignment.mat[i,] <- unlist(strsplit(alignment[i],""))
  }
  return(alignment.mat)
}
alphaData = as.AAbin(parseAlignment(alignmentFile = "MHC_II_Alpha.txt"))
betaData = as.AAbin(parseAlignment(alignmentFile = "MHC_II_Beta.txt"))