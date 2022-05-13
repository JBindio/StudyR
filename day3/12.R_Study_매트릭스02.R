z <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z

# cbind(열기준 결합)
x <- c(20, 25, 30, 35)

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

score['John','Math'] # John의 수학 성적
score['Tom',c('Math','Science')] # Tom의 수학, 과학 성적
score['Mark',] # Mark의 모든 과목 성적
score[,'English'] # 모든 학생의 영어 성적
rownames(score) # score의 행의 이름
colnames(score) # score의 열의 이름
colnames(score)[2] # score의 열의 이름 중 두 번째 값

burger <- matrix(c(514, 533, 566, 971,853, 888, 11, 13, 10), nrow = 3)
burger
rownames(burger) <- c('MacDonald', 'Lotteria', 'BurgurKing')
colnames(burger) <- c('열량(kcal)', '나트륨(na)', '포화지방(fat)')
# M사의 나트륨 함량, M사의 모든 영양 정보, 
# 모든 브랜드의 칼로리 정보를 추출해봅니다.
burger['MacDonald', '나트륨(na)']
burger['MacDonald', ]
burger[, '열량(kcal)']