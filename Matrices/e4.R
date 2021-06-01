A = matrix(c(2,3,1,1,-1,2), ncol=3)
B = matrix(c(1,2,3,1,0,-1), ncol=2)
C = c(1,3)
D = c(4,5)
AB_C = (A %*% B) %*% C


cat('AB_C', AB_C[1,], '\n')
cat('AB_C', AB_C[2,], '\n')

AB_C_m_D = t(AB_C) + D

cat('AB_C_m_D', AB_C_m_D[1,], '\n')
