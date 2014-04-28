## Put comments here that give an overall description of what your
## functions do

# just adding a comment to see if I got the git stuff right!

## Write a short comment describing this function
# this is bascally the same as the makeVector given
# by the instructor, only applied to a matrix
# and added the solve() function for taking the inverse
# I believe what we are doing is returning a list
# to some set, get, setInverse, get Inverse functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  
  # this line is the only thing I really changes
  # to get the inverse of the matrix using solve()
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
# This function magically caches/returns
# the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # Return a matrix that is the inverse of 'x'
  # Get Matrix "m" from Cache
  m <- x$getInverse()
  # apparently if m is not null, then we have the 
  # cached version - Magic!!!
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # we will only get here if m is null
  mydata <- x$get()
  # Calculate the inverse using Solve()
  m <- solve(mydata, ...)
  # set the cache to hold the inverse for next time
  x$setInverse(m)
  # Return the inverse
  m
  
  
}
