# Cap III. Matrices
# 1. El espacio de matrices
# Ejemplo 2

A = matrix(c(1,2,-1,3, 0, 4), ncol=3)
B = matrix(c(5,2,1,1,-1,-1), ncol=3)

C = A+B

cat('C = ', C[1,], '\n')
cat('    ', C[2,], '\n')

tC = t(C)

cat('tC = ', tC[1,], '\n')
cat('     ', tC[2,], '\n')
cat('     ', tC[3,], '\n')


