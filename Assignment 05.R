# Dominic Caciolo Assignment 05

rm(list=ls(all=TRUE))
cat("\014")

setwd("~/Downloads/REPOS/Assignment 05/Dominic-Caciolo-Assignment-05/Dominic-Caciolo-Assignment-05")
getwd()

file.edit(".gitignore")

if (!require("data.table")) install.packages("data.table")
library("data.table")

ptm <- proc.time()
header <- read.table("UNRATE.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("UNRATE.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME
View(DF)
############################################