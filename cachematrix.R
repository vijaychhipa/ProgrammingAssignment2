## Put comments here that give an overall description of what your
## functions do

## This function takes an invertible square matrix as an argument and augments it with 
## new function, specifically get(), set(), getInverse() and setInverse()
## are added. 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  get <- function() x
  set <- function(y) {
    m <<- y
  }
  
  mi <- NULL
  setInverse <- function( inverse ) {
    mi <<- inverse
  }    
  getInverse <- mi  
}

## This function takes a invertible square matrix as an argument and
## if it inverted this matrix before it returns the cached matrix
## else it copmutes the inverse and returns the inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (x == x$get() & !is.null( inverse )) {
    message("Getting the cached data")
    return (inverse)
  }
  data <= x$get()
  inverse <- solve(data)    
  x$setInverse(inverse)
  inverse
}
