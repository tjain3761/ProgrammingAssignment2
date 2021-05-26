## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	## Initialize the inverse property
    i <- NULL

    ## Method to set  matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ## Method the get  matrix
    get <- function() {
    	## Return the matrix
    	m
    }

    ## Method to set the inverse 
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Method to get the inverse
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Returns a list
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {

    ## Return a matrix that is inverse of 'x'
    m <- x$getInverse()

    ## Just return the inverse if already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Get the matrix from object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Set the inverse to object
    x$setInverse(m)

    ## Return the matrix
    m
}
