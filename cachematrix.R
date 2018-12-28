## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
d<- NULL
set<-function(z) {
x<<-z
d<<-NULL        
}        
get<-function()x
severse<-function(my_matrix) d<<- my_matrix 
geverse<-function()d
list(set=set, get=get, severse=severse, geverse=geverse)        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
d<-x$geverse()
if(!is.null(d)) {
message('Getting catched data')
return(d)
}
reson<-x$get()
d<- solve(reson)
x$severse(d)
d
}
