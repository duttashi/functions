# R functions don't return multiple objects in the strict sense. The most general way to handle this is to return a list object. So if you have an integer foo and a vector of strings bar in your function, you could create a list that combines these items:

foo <- 12
bar <- c("a", "b", "e")
newList <- list("integer" = foo, "names" = bar)
return (newList)
