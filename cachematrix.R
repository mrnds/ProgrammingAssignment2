## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInv<- function(inv) m <<-inv
        getInv <- function() m
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        m <- x$getInv()
        if (!is.null(m)) {
                message("Getting cached inversed matrix")
                return(m)
        } 
        data <- x$get()
        m <- solve(data)
        x$setInv(m)
        m
        
}