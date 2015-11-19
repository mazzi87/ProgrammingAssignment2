## this function returns the inverse of the the special square invertible "matrix"
## created with the makeCacheMatrix function

cacheSolve <- function(x, ...) {
        
        inverse <- x$getinverse()
        
        # if the inverse has already been calculated
        if (!is.null(inverse)){
                # get it from the cache and skips the computation. 
                message("getting cached data")
                return(inverse)
        }
        
        # else, compute the inverse through the solve function
        data <- x$get()
        inverse = solve(data, ...)
        
        # set the value of the inverse in the cache through the setinverse function
        x$setinverse(inverse)
        inverse
}