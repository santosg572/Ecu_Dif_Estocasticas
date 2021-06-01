Calu <- function(x=0, p=0){
	u1 <- -.4*p[1]*x[1]
	u2 <- -.2*p[2]*x[2]
	u <- u1+u2
	if (u < 0){
		u = 0
	} else if (u > 1){
		u = 1
	}
	res = u
}

