## The main function of the code is the cache the Inverse of a Matix by utilisng 2 functions
## 1. makeCacheMatrix
## 2. cacheSolve

## makeCacheMatrix function - will create special matrix object <<- than can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <-function(y){
                x <<- y
                inv <<- NULL
                
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function(inverse) inv 
        list(set= set, get = get,
             setinverse = setinverse, 
             getinverse = getinverse)
}



## 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
