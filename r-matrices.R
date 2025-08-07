# make a sequence of values from 1 - 10
my_values <- seq(from = 1, to = 10, by = 1)

my_values2 <- seq(from = 21, to=30)

# look at it (always)
my_values

# convert to matrix
my_matrix <- matrix(data = my_values, 
                    nrow = 2, 
                    ncol = 5, 
                    byrow = T)

my_matrix2 <- matrix(data=my_values2, nrow=2, byrow=T)

# look at it
my_matrix
my_matrix2

# testing dimensions of the matrix
matrix(data = my_values, nrow = 3, ncol = 4, byrow = T)

# matrix math
4*my_matrix
my_matrix + my_matrix2
my_matrix2-my_matrix

# matrix multiplication
# make some 2x2 matrices
cats <- matrix(data=c(0,4,3,1), nrow=2, byrow=T)
dogs <- matrix(data=c(6,-3,0,2), nrow=2, byrow=T)

#look at them
cats
dogs

#multiply them
cats %*% dogs

#Leslie Matrix example
#create matrix
insect_leslie <- matrix(c(0,0,600,0.2,0,0,0,0.08,0), 
                        nrow=3, 
                        ncol=3, 
                        byrow=T)
insect_leslie #look at it

#specify initial conditions (year 0)
insect_y0 <- c(12000, 700, 500)

#popn at year 1
insect_y1 <- insect_leslie %*% insect_y0
insect_y1

#popn at year 2
insect_y2 <- insect_leslie %*% insect_y1
insect_y2

#popn at year 3
insect_y3 <- insect_leslie %*% insect_y2
insect_y3

#popn at year 4
insect_y4 <- insect_leslie %*% insect_y3
insect_y4

#another leslie matrix example
tree_leslie <- matrix(c(0,0,5000,0.1,0,0,0,0.06,0.95),
                      nrow=3,
                      ncol=3,
                      byrow=T)
tree_leslie

#initial condition
tree_0 <- c(5000, 0, 0)

#year 1
tree_1 <- tree_leslie %*% tree_0
tree_1
tree_2 <- tree_leslie %*% tree_1
tree_2
tree_3 <- tree_leslie %*% tree_2
tree_3
tree_4 <- tree_leslie %*% tree_3
tree_4
