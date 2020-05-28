## Script consists of two functions. makeCacheMatrix and 
## cacheSolve

## The makeCacheMatrix function intitializes objects and creates a list with four functions as output


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- matrix
        getmatrix <- function() m
        #create list of four objects as output
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}

## Function cacheSolve checks if inverse matrix exists in cache and 
## use it as output, or calculates new inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m

        }
