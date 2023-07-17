my_function1 <- function(){
  print("This is a function!")
}

my_function1()#called the function


#function with arguement

my_function2 <- function(fName){
  paste(fName, "Language")
}
my_function2("Java")
my_function2("CPP")
my_function2(".NET")

#nested function
outerFunction <- function(x){
  innserFunction <- function(y){
    a <- x + y;
    return(a)
  }
  return(innserFunction)
}
output <- outerFunction(3)
output(5)