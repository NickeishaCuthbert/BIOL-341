# Author: Nickeisha Cuthbert, Date: August 25, 2021, Purpose: Microarray analysis

# Load library affy and limma

library("affy")
library("limma")

# Install library arrays

if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("arrays")

# Load library arrays

library("arrays")

# Read in sample microarray data

phenoData <- read.AnnotatedDataFrame(system.file("extdata", "pdata.txt", package="arrays"))

# Perform RMA normalization

celfiles <- system.file("extdata", package="arrays")

eset <- justRMA(phenoData=phenoData, celfile.path=celfiles)

# Differential gene expression analysis

combn <- factor(paste(pData(phenoData)[,1], pData(phenoData)[,2], sep = "_"))

design <- model.matrix(~combn)

# Describe model to be fit

fit <- lmFit(eset, design)

# Fit each probeset to model # empirical Bayes adjustment

efit <- eBayes(fit)

# Table of differentially expressed probeset

topTable(efit, coef=2)