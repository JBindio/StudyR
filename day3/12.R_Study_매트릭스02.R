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

z
z[2,1:3] # 2행의 값 중 1~3열에 있는 값
z[1,c(1,2,4)] # 1행의 값 중 1, 2, 4열에 있는 값
z[1:2,] # 1~2행에 있는 모든 값
z[,c(1,4)] # 1, 4열에 있는 모든 값

score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4)
score
rownames(score) <- c('John','Tom','Mark','Jane')
colnames(score) <- c('English','Math','Science')
score
