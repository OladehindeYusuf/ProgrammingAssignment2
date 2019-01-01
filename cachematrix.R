## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This is a pair of functions that cache the inverse of a a matrix
makeCacheMatrix <- function(x = matrix()) {
d<- NULL
        
## The method used in setting the matrix        
set<-function(z) {
x<<-z
d<<-NULL        
}

##The method to get the matrix        
get<-function()x
        
## Method to set the inverse of the matrix
severse<-function(my_matrix) d<<- my_matrix
        
#Method to get the inverse of the matrix        
geverse<-function()d
        
## This returns a list of the methods        
list(set=set, get=get, severse=severse, geverse=geverse)        
}


## Write a short comment describing this function

## Compute the inverse of the special matrix returned by 'MakeCacheMatrix'
## If the inverse has already been calculated and the matrix has not changed,
## then the 'CacheSolve' function retrieves the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
d<-x$geverse()
        
## This returns the inverse if it has already been set        
if(!is.null(d)) {
message('Getting catched data')
return(d)
}
        
## This gets the matrix from our objects        
reson<-x$get()
        
## This line calculates the inverse        
d<- solve(reson,...)
        
## This sets the inverse to the object        
x$severse(d)
        
## Returns the matrix        
d
}
