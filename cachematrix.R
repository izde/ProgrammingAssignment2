## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix has set,get,setinv and getinv

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
  set <- function(y) {
        x <<- y
       inv <<- NULL
  }
  get <- function() x #to get matrix for x
  setinv <- function(inverse) {inv <<- inverse}
  getinv <- function() {inv}
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function
## We are using this to get the cache data

cacheSolve <- function(x, ...) {
       inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
