A = c(1,2,3,4)
B = matrix(c(1,2,3,4,1,-1,2,-2), ncol=2)
C = c(1,2)

AB = A %*% B
cat('AB', AB, '\n')
AB_C = AB %*% C

cat('AB_C', AB_C, '\n')

BC = B %*% C
cat('BC', BC[1,], '\n')
cat(' ', BC[2,], '\n')
cat(' ', BC[3,], '\n')
cat(' ', BC[4,], '\n')

A_BC = A %*% BC
cat('A_BC', A_BC, '\n')

