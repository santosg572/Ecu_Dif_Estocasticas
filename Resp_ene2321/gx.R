gx <- function(x=0, u=0, p=0){
	u1 = u[1]
	u2 = u[2]
	u = u1+u2
	if (u < 0){
		u = 0
	} else if (u > 1){
		u = 1
	}
	A = matrix(c(1 - 0.4 * u, -x[1], -x[2], 1 + 0.2*u), ncol=2)
	B = matrix(c(1, p[1], -p[2], 1), ncol=2) 
	res =  A %*% p  +  B %*% x + c(-1,0)
}

