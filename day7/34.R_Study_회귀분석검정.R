# 차량 연비 데이터
mpg <- as.data.frame(ggplot2::mpg)
View(mpg)
library(dplyr)

mpg_diff <- mpg %>% # %>% 적용시키겠다
  select(class, cty) %>% # cty 도시연비
  filter(class %in% c('compact', 'suv'))

head(mpg_diff)

table(mpg_diff$class)
str(mpg_diff)

t.test(data = mpg_diff, cty ~ class, var.equal = T) 
# var.equal = T cty와 class가 분산이 동일하다

# 일반 휘발유, 고급휘발유의 도시연비 t검정
mpg_diff2 <- mpg %>% # %>% 적용시키겠다
  select(fl, cty) %>% # cty 도시연비
  filter(fl %in% c('r', 'p'))

table(mpg_diff2$fl)
str(mpg_diff2)

t.test(data = mpg_diff2, cty ~ fl, var.equal = T) 
