thisList <- list("Java", "Python", "CPP")
thisList #print list items

#length oi List
length(thisList)

#access list items
thisList[2]

#change list value
thisList[1] <- "Flutter"
thisList

#check if an items is exist in the List
"CPP" %in% thisList

#add an items end of the list
append(thisList, "React")

#add an items to the specified index
append(thisList, "R", after = 1)

#remove List items
newList <- thisList[-1]
newList

#return rang of items if the list
(thisList)[1:2]

#Loop through a List
for(i in thisList){
  print(i)
}

#join two list
list2 <- list(1,2,3)
list3 <- c(thisList,list2)
list3
