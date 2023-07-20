
#Importing data from CSV file

getwd() #Current working directory

setwd("E:\\R Language\\Basic R") #function to reset the current directory

ReadCSV <- read.csv("data.csv")
View(ReadCSV)#view all data of the data frame
print(ReadCSV)
print(is.data.frame(ReadCSV))

print(ncol(ReadCSV))#total number of column
print(nrow(ReadCSV))#total number of Rows
str(ReadCSV)#structure of the data set

summary(ReadCSV)#Summary statistic of the frame
length(ReadCSV)#length of the frame
dim(ReadCSV)# shows the dimension of data frame by rows and cols
colnames(ReadCSV)#Show the every column names
head(ReadCSV)#show the first 6 rows of the data frame
tail(ReadCSV)#show the last 6 rows of the data frame

fix(ReadCSV) #show the data editor
names(ReadCSV)#show every variable names

store <- ReadCSV[c(1:3, 8)]#change variable position
names(store)
store2 <- ReadCSV[c(1:10),] #show firs 10 rows of the data frame
store2 <- ReadCSV[c(1:10), c(1:4)] #show selected number of rows(1:10) & columns(1:4)
View(store2)

grep("Type", colnames(ReadCSV))#show given column position
d1 <- ReadCSV$Data_value #access particular variable data
d1
max_value <- max(ReadCSV$Data_value) #maximum value of the variable
print(max_value)

min_value <- min(ReadCSV$Data_value) #minimum value of the variable
print(min_value)
