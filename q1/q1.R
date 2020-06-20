a. 
> stock = read.csv("Stock_Index_table.csv", header = TRUE)
> View(stock)
> str(stock)
> stock$new_open <- c(0, diff(stock$Open))
> stock$new_high <- c(0, diff(stock$High))
> stock$new_low <- c(0, diff(stock$Low))
> stock$new_close <- c(0, diff(stock$Close))
> stock$new_volume <- c(0, diff(stock$Volume))
> stock$new_adj.close <- c(0, diff(stock$Adj.Close))
> samp1 = sample(seq(1, length(stock$Date)), 1000, replace = T)
> samp2 = sample(seq(1, length(stock$Date)), 3000, replace = T)

b.
> mysamp1 = stock[samp1, 2]
> mean(mysamp1)
> max(mysamp1)
> var(mysamp1)
> quantile(mysamp1, 0.25)

> mysamp2 = stock[samp1, 3]
> mean(mysamp1)
> max(mysamp1)
> var(mysamp1)
> quantile(mysamp1, 0.25)

> mysamp3 = stock[samp1, 4]
> mean(mysamp1)
> max(mysamp1)
> var(mysamp1)
> quantile(mysamp1, 0.25)

> mysample1 = stock[samp2, 2]
> mean(mysamp2)
> max(mysamp2)
> var(mysamp2)
> quantile(mysamp2, 0.25)

> mysample2 = stock[samp2, 3]
> mean(mysamp2)
> max(mysamp2)
> var(mysamp2)
> quantile(mysamp2, 0.25)

> mysample3 = stock[samp2, 4]
> mean(mysamp2)
> max(mysamp2)
> var(mysamp2)
> quantile(mysamp2, 0.25)

c.
> mean(stock$Open)
# 393.9602
> max(stock$Open)
# 1564.98
> var(stock$Open)
# 209641.4
> quantile(stock$Open, 0.25)
# 79.985 

> mean(stock$High)
# 396.5943
> max(stock$High)
# 1576.09
> var(stock$High)
# 212511.6
> quantile(stock$High, 0.25)
# 80.72

> abs(mean(mysamp1) - mean(stock$Open))
> abs(mean(mysamp2) - mean(stock$High))
> abs(mean(mysamp3) - mean(stock$Low))

> abs(mean(mysample1) - mean(stock$Open))
> abs(mean(mysample2) - mean(stock$High))
> abs(mean(mysample3) - mean(stock$Low))

e)
> boxplot(stock$Open, stock$High, stock$Low, stock$Close, col = 'blue', main = "stock", names=c("open", "high", "low", "close"), ylim = c(0,700))

f)
> hist(data$Close,freq = TRUE, w = 2000)





