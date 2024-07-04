# R Excel 文件

# 验证包是否安装
any(grepl("xlsx",installed.packages()))
# 载入包
library("xlsx")
library("xlsx")

# 读取 sites.xlsx 第一个工作表数据
data <- read.xlsx("../resources/sites.xlsx", sheetIndex = 1)
print(data)