## Put comments here that give an overall description of what your
## functions do
#Two functions makeConsists of set, get inv
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL#initialising inverse as NULL
set<-function(y)
    x<<-NULL
inv<<-NULL
}
get<-function(){x}#function to get matrix x
setInverse<-function(inverse){inv<<-inverse}
getInverse<-function(){x}#function to get inverse inverse of matrix
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)


## Write a short comment describing this function
#This is used to get cashed data
cacheSolve <- function(x, ...) {#gets cahce data
  inv<-x$getInverse
  if(!is.null(inv)){#checking if inverse is null
    message("getting cached data")
    return(inv)#returns invers value
  }
  mat<-x$get()
  inv<-solve(mat,...)#caclulates inverse value
  x$setInverse(inv)
  inv
  
   ## Return a matrix that is the inverse of 'x'
}
