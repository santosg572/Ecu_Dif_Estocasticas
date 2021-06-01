A = matrix(c(1,2,3,4), ncol=2)
B = matrix(c(1,1,2,-2), ncol=2)

p = c(1,2)
x = c(3,4)
cc = c(-1,0)
res =  A %*% p  +  B %*% x + cc

print(res)