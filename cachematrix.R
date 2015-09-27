#Name: Murtaza Hasni
#Date: September 23, 2015
#Course: RPROG-032 - R Programming

#Note: The functions were modified from the ones found on assignment2's README.md
#      The function will cache a matrix's inverse (instead of caching the mean).
#      The solve() function was used as per line 84 of the README.md

#Usage:
#1. Source program in R:
#                       > source("cachematrix.R")
#2. Construct a Matrix in R:
#                       > matx <- matrix( c(3, 0, 0, 0, 3, 0, 0, 0, 3), nrow=3, ncol=3)
#3. Supply your matrix to makeCacheMatrix(); assign it to a cached matrix var:
#                       > cachedata <- makeCacheMatrix(matx)
#6. Supply the cacheSolve() function with your cache data var:
#                       >cacheSolve(cachedata)
#5. Compare your original matrix with the result of cacheSolve which generates its inverse


#Function that takes a matrix parm and then cache its inverse
makeCacheMatrix <- function(x = matrix()) { #changed from numeric() to matrix() from template

  #Used the assignment2 pages 'makevector' function as a template
  m <- NULL
       set <- function(y) {
               x <<- y
               m <<- NULL
       }
       get <- function() x
       setsolve <- function(solve) m <<- solve #replaced mean() with solve() to cal inverse
       getsolve <- function() m  #TODO: replace with a get inverse var
       list(set = set, get = get,
            setsolve = setsolve,  #TODO: replace with a set inverse assignment
            getsolve = getsolve)  #TODO: replace with a get inverse assignment

}


#The following function will calculate the inverse of the matrix supplied by the parm
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        #Used the assignment2 pages 'cachemean' function as a template

        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...) #change mean() to solve()
        x$setsolve(m)
        m
}
