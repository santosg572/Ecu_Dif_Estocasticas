# Multiplicacion de Matrices

# Ejemplo 1

A = matrix(c(2,1,1,3,5,2), ncol=3)
B = matrix(c(3,-1,2,4,2,1), ncol=2)

C = matrix(c(1,-1,3,-1), ncol=2)

BC = B %*% C

cat('BC = ', BC[1,], '\n')
cat('     ', BC[2,], '\n')
cat('     ', BC[3,], '\n')

ABC = A %*% BC

cat('A-BC = ', ABC[1,], '\n')
cat('     ', ABC[2,], '\n')

AB = A %*% B

AB_C = AB %*% C

cat('AB_C = ', AB_C[1,], '\n')
cat('     ', AB_C[2,], '\n')




