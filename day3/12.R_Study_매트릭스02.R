z <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z

# cbind(열기준 결합)
x <- c(20, 25, 30, 35)
x

m1 <- cbind(z, x)
m1

# rbind(행기준 결합)
y <- 36:41
y

m2 <- rbind(m1, y)
m2
