A = matrix(c(1,2,3,4,1,-1,2,-2), ncol=2)
B = c(1,2)

AB = A %*% B

C = c(1,2,3,4)

cat('AB= ', AB[1,], '\n')
cat('    ', AB[2,], '\n')
cat('    ', AB[3,], '\n')
cat('    ', AB[4,], '\n')

AB_mC = t(AB) + C
cat('AB_mC= ', AB_mC, '\n')
