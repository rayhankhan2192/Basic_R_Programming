#Manipulate Data in R with dplyr Package

#install.packages("dplyr") #install the library
library(dplyr) #Load the library

setwd("E:\\R Language\\Basic R")
test <- read.csv("data.csv")
View(test)
head(test)
tail(test)

#some important dplyr verbs

#select()   #select columns
#filter()   #filter rows
#arrange()  #re_order or arrange rows
#mutate()   #create new columns
#summarise() #summarise values
#group_by() #allows for group operations in the split_apply combine
names(test)
result <- select(test, Series_reference, Data_value) #select(csv variable, table variable, table variable)
View(result)
head(result)
tail(result)

#show the all column value except Data_value
test1 <- select(test, -Data_value) 
View(test1)
head(select(test, -Data_value))

#To select all columns that start with the character string "query"
#use the function start_with()

head(select(test, starts_with("S")))

#some additional to select columns based on a specific criteria

#ends_with() #select columns that end with a characters string
#contains() #select columns that contains a characters string
#matches() #select columns that match a regular expression
#one_of() #select columns names that are from a group of names

names(test)
View(test)

#selecting rows using filer()
#filter the rows for given values less of grater than
filter(test, Upper_CI >= 50, Data_value < 50) #show the output according to the condition given inside the filter() 

filter(test, Cause %in% c("Work")) #Here cause is a column from CSV file and "Work" is a a search term from Cause column 


#install.packages("magrittr")
library(magrittr)
test %>% select(Units, Indicator) %>% head
#pipe operator: %>%
#dplyr import this operator from another package magrittr
#this operator allows to pipe the output from one function to input of another function
#instead of  of nesting function 
#the main idea of pipe is read the functions left to right

head(select(test, Units, Lower_CI))
test %>% select(Units, Lower_CI) %>% head #this 2 output has given same output
test %>% head  %>% select(Units, Lower_CI) 


head(select(test, Units, Lower_CI))
test %>% select(Units, Lower_CI) %>% head #this 2 output has given same output
test %>% head  %>% select(Units, Lower_CI) 

#the arrange() function is used to sort the data 
#frame data based on the specified columns.

test %>%
  select(Period,Units, Lower_CI) %>%
  arrange(Units, Lower_CI) %>%
head


test %>%
  select(Period, Units, Lower_CI) %>%
  arrange(Units, Lower_CI) %>%
  filter(Lower_CI >=50) %>%
head

