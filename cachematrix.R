## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { #the function creates a list of functions: set, get, setsolve, getsolve
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x    #returns the matrix
        setsolve <- function(solve) m <<- solve   
        getsolve <- function() m        #returns the inverse of the matrix
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {#caches the inverse of a matrix
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)  # calculates the inverse of the matrix
        x$setsolve(m)  
        m
        ## Return a matrix that is the inverse of 'x'
}

