## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special matrix named x that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
set <- function(y){
   x <<- y 
   m <<- NULL

#sets 'x' and 'm' values in environment 
   
}
 get <- function (x)
   setmatrix<-function(solve) m<<- matrix
   getmatrix<-function() m 
   
#retrieves matrix 'm' and calculates the inverse of the matrix using setmatrix function.

   list(set = set,get = get,
        setmatrix= setmatrix, 
        getmatrix = getmatrix)
  }


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

       m<-getmatrix()
       if(!is.null(m)){
             message("getting cached data")
             return(m)
       }
       data<- x$get()
       m<- solve(data,...)
       x$setmatrix(m)
       m
       #if the inverse of the matrix has been computed, returns the inverse matrix from the cache.
}
       