# Author: Nickeisha Cuthbert, Date: September 3, 2021, Purpose: To do phylogenetic analysis of some sample data

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