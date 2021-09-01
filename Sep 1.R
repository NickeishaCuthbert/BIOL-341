# Author: Nickeisha Cuthbert, Date: September 1, 2021, Purpose: To generate phylogenetic trees on some sample data

# Install 4 packages for R

install.packages("ape") 
install.packages("phangorn") 
install.packages("phytools") 
install.packages("geiger")

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
