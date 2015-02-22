## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix <- function(x = matrix()) {

##}


## Write a short comment describing this function

## cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
##}

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL

    #function 'set' sets the value of the original Matrix
        
  }
  get <- function() x
  
    #function 'get'returns the value of the original Matrix
  
  seti <- function(inverse) i <<- inverse
    #function seti sets the value of i which is the Inverse of the original Matrix as calculated by the function cacheSolve.
  
  geti <- function() i
    #function 'geti'returns the cached value of the Inverse Matrix  
  
  list(set = set, get = get,
       seti = seti,
       geti = geti)
  
  # The functions are the result of the makeCacheMatrix function.
  
}

cacheSolve <- function(x, ...) {
  
  i <- x$geti() # gets the Inverse Matrix cached at makeCAcheMatrix 
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  } # if an Inverse Matrix has not been cached yet, i will be NULL and the Inverse has to be calculated using the solve function.
  data <- x$get()
  i <- solve(data)
  x$seti(i) # if a Inverse is calculated, the function set is used to cache the value calculated.
  i
  
}
