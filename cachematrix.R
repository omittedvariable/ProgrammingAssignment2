## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function mackeCacheMatrix creates a special vector, which is a list containing
## function to set the value of the vector, get the value of the vector, set the value of inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<- function(y){
    x<<- y
    m<<- NULL
    }
    get<- function() x
    setinv<- function(inverse) m <<- inverse
    getinv<- function()m
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## Using the "solve" command cacheSolve returns the inverse of the original matrix 
## input to makeCachematrix

cacheSolve <- function(x, ...){
  
  m <- x$getinv()
  
  if(!is.null(m)){
    
    message("getting cached data")
    return(m)
  }
   data <-x$get()
   
   m <- solve(data,...)
   
   x$setinv(m)
   m
}