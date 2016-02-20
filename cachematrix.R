## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(c(1,2,3,4),nrow=2,ncol=2)) {
        m <- NULL
        set <- function(y) {
                x <<- yR
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) { ##check if NULL
                message("getting cached data")
                return(m)
        }
        data <- x$get() ##solve and cache the result
        m <- solve(data)
        x$setinverse(m)
        m
}
