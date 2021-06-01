SolucionPPU <- function(del=0, xx=0, uu=0){ 
	ss = dim(xx)
	n = ss[1]
	
	dwp = 0*sqrt(del)*rnorm(n)
	
	pp = matrix(rep(0,2*n), ncol=2)
	
	pp[n,] = c(0,0)
	
	p2 = pp[n,]
	u2 = uu[n,]
	w2 = dwp[n]
	x2 = xx[n,]	
	for (i in (n-1):1){
		p1 = p2 - del * gx(x2, u2, p2) - w2*gw(p2)
		pp[i,] = p1
		p2 = p1
		u2 = uu[i,]
		w2 = dwp[i]
		x2 = xx[i,]
	}
	res = pp
}

