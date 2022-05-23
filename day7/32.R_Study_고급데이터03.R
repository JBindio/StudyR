setwd('C:/STUDY/StudyR/R')

files <- c('ds.2015.csv', 'ds.2016.csv','ds.2017.csv',
           'ds.2018.csv','ds.2019.csv')
ds <- NULL
for (f in files) {
  tmp <- read.csv(f, header=T)
  ds <- rbind(ds, tmp)
  print(f)
}

str(ds)
head(ds)
unique(ds$loc) # 관측 장소
range(ds$mdate) # 측정 기간
# 열별 결측값 확인
for (i in 3:8) {
  cat(names(ds)[i], sum(is.na(ds[,i])), 
      sum(is.na(ds[,i]))/nrow(ds), '\n')
}
ds <- ds[,-8] # PM25 열 제거
ds <- ds[complete.cases(ds),] 

mdate <- as.character(ds$mdate)
head(mdate)
ds$year <- as.numeric(substr(mdate, 1,4)) # 연도
ds$month <- as.numeric(substr(mdate, 5,6)) # 월
ds$hour <- as.numeric(substr(mdate, 9,10)) # 시간
ds$locname <- NA # locname 열을 추가
ds$locname[ds$loc==111123] <- '서울' # 도시
ds$locname[ds$loc==336111] <- '목포' # 도시
ds$locname[ds$loc==632132] <- '강릉' # 도시
head(ds)

library(ggplot2)

# 연도별 미세먼지
tmp.year <- aggregate(ds[,7], 
                      by=list(year=ds$year,loc=ds$locname), FUN='mean')
tmp.year$loc = as.factor(tmp.year$loc)
head(tmp.year)
ggplot(tmp.year, aes(x=year,y=x, colour=loc, group=loc))+
geom_line()+
geom_point(size=6, shape=19, alpha=0.5)+
ggtitle('연도별 PM10 농도 변화')+
ylab('농도')

# 월별 미세먼지
tmp.month <- aggregate(ds[,7], 
                       by=list(month=ds$month,loc=ds$locname),
                       FUN='mean')
tmp.month$loc = as.factor(tmp.month$loc)
head(tmp.month)
ggplot(tmp.month, aes(x=month,y=x, colour=loc, group=loc))+
  geom_line( )+
  geom_point(size=3, shape=19, alpha=0.5)+
  ggtitle('월별 PM10 농도 변화')+
 ylab('농도')

# 상관관계
set.seed(1234)
plot(ds[sample(nrow(ds),5000),3:7], lower.panel=NULL)
cor(ds[,3:7])
