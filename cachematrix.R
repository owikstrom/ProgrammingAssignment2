## My implementation of Programming Assignment 2 for the R Programming Course at Coursera/John Hopkins
## Assigment purpose is to implement caching functions.

## Function for cached matrix

makeCacheMatrix <- function(m1 = matrix()) {
  
  invmatrix <- NULL
 
  set <- function(y) {
    m1 <<- y
    invmatrix <<- NULL
  }
  get <- function() m1
  
  setinverse <- function(inverse) invmatrix <<- inverse
  getinverse <- function() invmatrix 

  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Function for inverting matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  
   
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
 
  data <- x$get()
  m <- solve(data)
  
  x$setinverse(m)
  m
  
    
}
