getwd()

install.packages('data.table')
library(data.table)
install.packages('dplyr')
library(dplyr)
install.packages('ggplot2')
library(ggplot2)
install.packages('lubridate')
library(lubridate)
install.packages('stringr')
library(stringr)
install.packages('forecast')
library(forecast)
install.packages('randtests')
library(randtests)

load(file = 'C:/STUDY/StudyR/R/result_sales_dt.RData')

str(result_sales_dt)
unique(result_sales_dt$yyyyqrt)
glimpse(result_sales_dt, width = 60)

# 쿼터별 매매량 계산
qrt_cnts <- result_sales_dt[yyyyqrt != '2015Q2', .N,yyyyqrt]

ggplot(qrt_cnts, aes(x=yyyyqrt, y=N,group=1))+
geom_line() + xlab('년도분기') + ylab('매매건수')+
theme(axis.text.x = element_text(angle=90))+
stat_smooth(method='lm')

region_cnt <- result_sales_dt[yyyyqrt != '2015Q2',.N,.(yyyyqrt,region)]
ggplot(region_cnt, aes(x=yyyyqrt, y=N,group=1))+
geom_line() + facet_wrap(~region,scales='free_y', ncol=3)+
stat_smooth(method='lm')+
theme(axis.text.x = element_blank())