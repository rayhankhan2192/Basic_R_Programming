#vector of string
language <- c("Java", "Python", "CPP", "R", "Go")
language #print vector items

#vector of number
number <- c(1,20,13,4,22,7)
number

# Vector with numerical values in a sequence
number2 <- 1:10
number2

#length of the vector
length(number2)

#sort vector
sort(language)
sort(number)

#access vector items
language[2]

#access multiple itens of the vector
language[c(1,3)]

# Access all items except for the first item
language[-1]

#change vector java to javaScript
language[1] <- "Java Script"
language#print the new vector value

#repeat the each value of the vector
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each

result <- rep(language, each = 2)
result

#Repeat each value independently:
res <- rep(c(1,2,3), times = c(3,2,1))
res

numberss <- seq(from = 0, to = 100, by = 10)
numberss
