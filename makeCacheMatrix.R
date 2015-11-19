## this function returns a list containing a function to
##              1. set the value of the matrix
##              2. get the value of the matrix
##              3. set the value of the inverse
##              4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  ## x is a square invertible matrix
  inverse <- NULL
  set <- function(y) {
          x <<- y
          inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) inverse <<- inv 
  getinverse = function() inverse
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}
