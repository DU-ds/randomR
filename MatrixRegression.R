x <- matrix(c(rep(1, 1000),rnorm(10000, 10, 1 )), ncol = 11)
y <- rnorm(1000, 15, 1 )
betaHat <- solve(t(x) %*% x) %*% t(x) %*% y
lm(y ~ x[,-1]) # same model as betaHat