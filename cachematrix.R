## Put comments here that give an overall description of what your
## functions do

## functions that cache a inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}

## this function computes 1/x of a matrix
cacheSolve <- function(x, ...) {
inv <- x$getInverse()
if(!is.null(inv)){
  message("getting cached data")
  return(inv)
  }
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv      
}
