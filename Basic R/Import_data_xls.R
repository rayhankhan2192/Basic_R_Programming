
#install xlsx package
install.packages("xlsx")

#verifying the package is installed 
any(grepl("xlsx", installed.packages()))

#Loading the library into R workspace
library("xlsx")

setwd("E:\\R Language\\Basic R")
getwd()

#read excel file
excel_data <- read.xlsx("data_of_xls.xls", sheetIndex = 1)
print(excel_data) #just print the xls data in console
View(excel_data) # to open the data set
names(excel_data)# to view the column title
dim(excel_data) # shows the dimension of data frame by rows and cols
summary(excel_data)

max_age <- max(excel_data$Age)#show max age from the data set
print(max_age)

min_age <- min(excel_data$Age)#show min age from the data set
print(min_age)

details <- subset(excel_data, Country == "United States") #to see specific data
View(details)

