SolucionXPU <- function(del=0, pp=0){
   ss = dim(pp)

   n = ss[1]

   xx = matrix(rep(0,2*n), ncol=2)

   dwx1 = 0 *sqrt(del)*rnorm(n)
   dwx2 = 0 *sqrt(del)*rnorm(n)

   	x1 = c(.5, .7)
	p1 = pp[1,]
	w2 = dwx2[1]
	u1 = Calu(x1, p1)
	
   	for (i in 2:n){
   		A = matrix(c(1 - 0.4 * u1, x1[2], -x1[1], -1 - 0.2*u1), ncol=2)
		res = A %*% x1
	  	x2 = x1 + del*res + c(w1, w2)
	  	xx[i,] = x2
	  	x1 = x2
		p1 = pp[i,]
		w1 = dwx1[i]
		w2 = dwx2[i]
		u1 = Calu(x1, p1)
   }
   
   uu = matrix(rep(0,2*n), ncol=2)
   
   for (i in 1:n){
   		pi = pp[i,]
   		xi = xx[i,]
	    u1 = -.4*pi[1]*xi[1]
        u2 = -.2*pi[2]*xi[2]
        uu[i, ] = c(u1,u2)
   }
   
#   print('--------- xx -------------')
#   print(xx)
#   print('--------- uu -------------')
#   print(uu)
  
   res = list(xx=xx, uu=uu)
}

