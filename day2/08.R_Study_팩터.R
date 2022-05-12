# 팩터
bt <- c('A', 'B', 'B', 'O', 'AB', 'A')
bt
bt.new <- factor(bt) # 반복 값 제거 (집합)
bt.new
bt[5]
bt.new[5]
bt.new[1]
bt.new[2]
levels(bt.new)
as.integer(bt.new)

levels(bt.new)[4]
bt.new
bt.new[7] <- 'B'
bt.new[7]
bt.new[8] <- 'C'
bt.new