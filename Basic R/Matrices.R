#create a matrix
thisMatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
thisMatrix

thisMatrix <- matrix(c("Java", "Python", "CPP", "C", "GO", "Swift", "Linux", "Windows", "IOS"), nrow = 3, ncol = 3)
thisMatrix

length(thisMatrix)

#access matrix items
thisMatrix[2,2]

#access hole row of the matrix
thisMatrix[2,]
#access hole col of the matrix
thisMatrix[,1]

#access more than one row of the matrix
thisMatrix[c(1,2),]
#access more than one column
thisMatrix[,c(1,2)]

#add rows and column
newMatrix <- rbind(thisMatrix, c("SQL", "Spring", "Maven"))
newMatrix

#remove rows and column
#rremove first row and first column
thisMatrix[-c(1), -c(1)]
thisMatrix

#check if an items an exist
"Java" %in% thisMatrix

#total rows and column
dim(thisMatrix)

#Loop through a matrix

for(rows in 1: nrow(thisMatrix)){
  for(colm in 1: ncol(thisMatrix)){
    print(thisMatrix[rows,colm])
  }
}