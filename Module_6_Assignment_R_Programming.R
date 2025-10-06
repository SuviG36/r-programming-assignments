# making 2 small matrices A and B
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# add them together
A + B

# subtract them
A - B

# diag() is for diagonal matrices
# putting 4,1,2,3 on the diagonal
D <- diag(c(4, 1, 2, 3))
D

# start with a diagonal matrix of 3’s
custom_matrix <- diag(3, 5)

# overwrite the first column with (3,2,2,2,2)
custom_matrix[,1] <- c(3,2,2,2,2)

# also set the first row to (3,1,1,1,1)
custom_matrix[1,] <- c(3,1,1,1,1)

custom_matrix

