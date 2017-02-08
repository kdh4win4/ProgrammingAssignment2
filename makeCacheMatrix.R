makeCacheMatrix <- function(x = matrix()) {
    mm <- NULL
    set <- function(y) {
        x <<- y
        mm <<- NULL
    }
    get <- function() x
    set_inv_matrix <- function(inv_matrix) mm <<- inv_matrix
    get_inv_matrix <- function() mm
    list(set=set,
         get=get, 
         set_inv_matrix=set_inv_matrix,
         get_inv_matrix=get_inv_matrix 
         )
}
