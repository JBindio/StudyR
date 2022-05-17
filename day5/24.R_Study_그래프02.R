# 2D 원 그래프(pie chart)
favorite.season <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL',
                     'FALL','SUMMER','SPRING','SPRING')
ds <- table(favorite.season)
pie(ds, main = '선호 계절', radius = 1, col = rainbow(4))

# 3D 원 그래프
install.packages('plotrix')
library(plotrix)

pie3D(ds, main = '선호계절', labels = names(ds),
      labelcol = 'black', labelcex = 1.0, explode = 0.1, radius = 1.5,
      col = c('yellow','lightgreen','skyblue','white'))
      
# 선 그래프(line chart)
month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month, # x 데이터
     late1, # y 데이터
     main = '지각생 통계', 
     type = 'l',         # 그래프의 종류 선택(알파벳)
     lty = 1,            # 선의 종류(line type) 선택
     col = 'red',        # 선의 색상 선택
     xlab = '월',        # x축 레이블
     ylab = '지각생 수', # y축 레이블
     ylim = c(0,15)      # y축 조절
     )

# 선 그래프 추가
lines(month, # x 데이터
      late2, # y 데이터
      type = 'l',  # 선의 종류(line type) 선택
      col = 'blue', # 선의 색상 선택
      )

# 과목 선호도 조사
install.packages('DAAG')
library(DAAG)
science

ds <- table(science$like)
pie(ds, main='선호 점수별 비율',
    col = rainbow(length(ds)), # 파이의 색 지정
    radius = 1) # 파이의 크기 지정

# 산점도(두 변수사이의 관계)
wt <- mtcars$wt   # 중량 데이터
mpg <- mtcars$mpg # 연비 데이터
plot(wt, mpg,     # 2개 변수(x축, y축)
     main = '중량-연비 그래프', # 제목
     xlab = '중량(t)',      # x축 레이블
     ylab = '연비(MPG)', # y축 레이블
     col = 'red',        # point의 color
     pch = 8)           # point의 종류

# 여러가지 산점도 사용법
plot(mtcars$wt, mtcars$mpg,
     ..)
plot(mtcars[,c('wt', 'mpg')],
     ..)
plot(mpg~wt, data=mtcars,
     ..)

# 다중 산점도
vars <- c('mpg','disp','drat','wt') # 대상 변수
target <- mtcars[,vars]             # 대상 데이터 생성
plot(target,                        # 대상 데이터
     main='다중 산점도') 

# 산점도 그룹화
iris.2 <- iris[,3:4] # 데이터 준비
levels(iris$Species) # 그룹 확인
group <- as.numeric(iris$Species) # 점의 모양과 색
group # group 내용 출력
color <- c('red','green','blue') # 점의 컬러
plot(iris.2,
     main='붓꽃 꽃잎 길이 - 넓이 산점도',
 pch=c(group),
 col=color[group]) 
