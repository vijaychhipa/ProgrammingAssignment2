## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function
## it takes a invertible square matrix as an argument and
## if it inverted this matrix before it returns the cached matrix
## else it copmutes the inverse and returns the inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (!is.null( inverse )) {
    message("Getting the cached data")
    return (inverse)
  }
  data <= x$get()
  inverse <- solve(data)    
  x$setInverse(inverse)
  inverse
}
