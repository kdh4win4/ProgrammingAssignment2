cacheSolve <- function(x, ...) {
    inv_matrix <- x$get_inv_matrix()
    if(!is.null(inv_matrix)) {
        message("getting cached inversed matrix")
        return(inv_matrix)
    }
    else{
    #it gets just matrix from the cached data
    cached <- x$get()
    #computing the inverse matrix with solve function
    inv_matrix <- solve(cached)
    x$set_inv_matrix(inv_matrix)
    inv_matrix
    }
}
