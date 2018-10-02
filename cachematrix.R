## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## A function creating a vector  containing get, set value of the vector and get and set inverse of the vector


makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set <- function(y) {
      x <<- y
      a <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) a <<- inverse
    getinverse <- function() a
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
}

## Write a short comment describing this function
## function to check cache value 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    a <- x$getinverse()
    if (!is.null(a)) {
      message("getting cached data")
      return(a)
    }
    
    data <- x$get()
    a <- solve(data, ...)
    x$setinverse(a)
    a
  }
  
