## The main function of the code is to cache the Inverse of a Matrix by utilisng 2 functions
## 1. makeCacheMatrix
## 2. cacheSolve

## makeCacheMatrix function - will create special matrix object <<- than cache its inverse which
## realy is a list containing a function.
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

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

## The function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve
## the inverse from the cache
## This function assumes that the matrix is always invertible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
                message("getting cached data.")
                return(inv)
                
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
        
}

## Test Data
## m <- makeCacheMatrix()
## m$get(matrix(c(0,2,2,0), 2,2))
## m$get
##          [,1] [,2]
##   [1,]    0    2
##   [2,]    2    0
## cacheSolve(m)
##         [,1] [,2]
##   [1,]    0.0    0.5
##   [2,]    0.5    0.0
## cacheSolve(m)
## getting cached data
##         [,1] [,2]
##   [1,]    0.0    0.5
##   [2,]    0.5    0.0
