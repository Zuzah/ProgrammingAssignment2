#Name: Murtaza Hasni
#Date: September 23, 2015
#Course: RPROG-032 - R Programming

#Note: the assignmen2 functions will be modified
#      to cache a matrix's inverse rather than caching the mean


##Function that takes a matrix parm and then cache its inverse
makeCacheMatrix <- function(x = matrix()) { #changed from numeric() to matrix() from template

  #Used the assignment2 pages 'makevector' function as a template
  m <- NULL
       set <- function(y) {
               x <<- y
               m <<- NULL
       }
       get <- function() x
       setmean <- function(mean) m <<- mean #TODO: replace with a set inverse var
       getmean <- function() m  #TODO: replace with a get inverse var
       list(set = set, get = get,
            setmean = setmean,  #TODO: replace with a set inverse assignment
            getmean = getmean)  #TODO: replace with a get inverse assignment

}


#The following function will calculate the inverse of the matrix supplied by the parm
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        #Used the assignment2 pages 'cachemean' function as a template

        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
