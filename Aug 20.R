# Author: Nickeisha Cuthbert, Date: August 20, 2021, Purpose: Perform microarray analysis

# Install library/package "affy"

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("affy")

# Read the package in R

library(affy)

