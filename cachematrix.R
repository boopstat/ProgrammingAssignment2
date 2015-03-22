## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
    set <- function(X) {
        x <<- X;
        inverse <<- NULL;
    }
    get <- function() return(x);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))

}

@@ -12,4 +21,14 @@ makeCacheMatrix <- function(x = matrix()) {

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverse <- x$getinv()
    if(!is.null(inverse)) {
        message("Getting cached data...")
        return(inverse)
    }
    data <- x$get()
    invserse <- solve(data, ...)
    x$setinv(inverse)
    return(inverse)

}
