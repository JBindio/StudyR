# 매트릭스
z <- matrix(1:20, nrow = 4, ncol = 5)
z
z[1]
z[1, 3]
z[3, 4]
z[4, 5]

z2 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z2
z2[3,1]

z3 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z3

x <- 1:4
y <- 5:8
x
y
m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2
m3 <- rbind(m2, x)
m3
m4 <- cbind(z,x)
m4
x
z
z[2,]
z[,3]
