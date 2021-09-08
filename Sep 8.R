# Author: Nickeisha Cuthbert, Date: September 8, 2021, Purpose: To read the phylogenetic tree from a sample text file

# Load the 4 packages 

library(ape)
library(phangorn)
library(phytools)
library(geiger)

# Generate a variable called "text.string" with some sample species 

text.string <- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

# Apply the function read.tree() to read the variable text.string

vert.tree<-read.tree(text=text.string)

# Plot the tree using the function plot()

plot(vert.tree,no.margin=TRUE,edge.width=2)

# Generate a phylogram

roundPhylogram(vert.tree)

# Generate an unrooted plot

plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial", edge.width=2)

# What are edges and nodes in sample data?

str(vert.tree)

# Pulling out labels of generated tree

vert.tree$tip.label

# Set working directory path

setwd("C:\\Users\\1nick\\Downloads")

# Writing/exporting generated tree to above directory

write.tree(vert.tree,file="example.txt")

# Read the text file in R

Data <- read.table("example.txt", header = FALSE, sep = "", dec = ".")

# TXT and CSV are most easy to work file types in R
# CSV: Comma Separated Value file type, similar to xls or xlsx file types but in CSV files the formulas or multiple tabs cannot be stored

# Read the CSV file in R
Data2 <- read.csv("Book1.csv", header = TRUE, sep = ",", dec = ".")

