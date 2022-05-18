# 샘플링
x <- 1:100
x
y1 <- sample(x, size = 5, replace = T) # 복원추출(중복값 허용)
y1
y2 <- sample(x, size = 5, replace = F) # 비복원추출 (중복값 제거)

idx <- sample(1:nrow(iris), size = 15, replace = F)
idx

iris.15 <- iris[idx, ]
iris.15

sample(1:20, size = 5)
sample(1:20, size = 5)
sample(1:20, size = 5)
set.seed(100)
sample(1:20, size = 5)
set.seed(100)
sample(1:20, size = 5)
sample(1:20, size = 5)

# 조합
combn(1:5, 3) # 1~5에서 3개를 뽑는 조합
x <- c("red","green","blue","black","white")
com <- combn(x, 2) # x의 원소를 2개씩 뽑는 조합
com
for(i in 1:ncol(com)) { # 조합을 출력
  cat(com[,i], "\n")
}

options(max.print = 1000000)

# 편두통 치료 데이터
str(KosteckiDillon)
tot.mean <- mean(KosteckiDillon$dos)
for (rt in (1:5)*0.1) {
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon) * rt)
  sam.data <- KosteckiDillon[idx,'dos'] # 샘플링 데이터 추출
  tmp.mean <- mean(sam.data) # 샘플링 데이터 평균
  cat('비교 :', rt * 100, '% 샘플링 평균 치료일수 =', 
      tot.mean,' : ', tmp.mean, tot.mean - tmp.mean, '\n')
}

agg <- aggregate(iris[, -5], by = list(품종 = iris$Species), FUN=sum)
summary(agg)

# 선거 통계 분석
library(carData)
data('CES11') # 데이터셋 불러오기
str(CES11)

# 테이블화
table(CES11$abortion) # 반대, 찬성 인원수
table(CES11$abortion)/nrow(CES11) # 반대, 찬성 비율

agg <- aggregate(CES11[,'abortion'], by=list(성별 = CES11$gender), FUN = table)
agg
agg.2 <- agg[,2] # Yes/No 빈도수 부분만 추출

agg.2[1,] <- agg.2[1,]/sum(agg.2[1,]) # female Yes/No 비율 계산
agg.2[2,] <- agg.2[2,]/sum(agg.2[2,]) # male Yes/No 비율 계산
rownames(agg.2) <- agg[,1]
colnames(agg.2) <- c('낙태찬성', '낙태반대')
rownames(agg.2) <- c('여성', '남성')
agg.2

# 칠레 대통령 선거 여론조사사
str(Chile)
sum(is.na(Chile)) # 결측치 확인 = 295개 결측치
ch <- Chile[complete.cases(Chile), ] # 결측치 제거
sum(is.na(ch)) # 결측치 제거 완료 = 0개 결측치

set.seed(100)
idx <- sample(nrow(ch), nrow(ch)*0.6)
idx
ch60 <- ch[idx,]
ch60

agg <- aggregate(ch60[,'population'], by = list(지역 = ch60$region), sum)
agg[order(agg$x, decreasing = T), ]
agg

table(ch60$vote)
no.people <- table(ch60$sex)
no.people
tmp <- subset(ch60, vote == 'Y')
agg <- aggregate(tmp[,'vote'], by=list(성별 = tmp$sex), length)
yes.ratio <- agg$x / no.people
yes.ratio

no.region <- table(ch60$region) # 지역별 응답자수
tmp <- subset(ch60, vote=='Y') # 찬성만 추출
agg <- aggregate(tmp[,'vote'], by=list(지역=tmp$region), length)
yes.ratio <- agg$x / no.region # 찬성 비율 계산
yes.ratio
