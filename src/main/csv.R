# R CSV 文件

#读取 CSV 文件
data <- read.csv("../resources/sites.csv", encoding="UTF-8")
print(data)

# 写入 CSV 文件
# read.csv() 函数返回的是数据框，我们可以很方便的对数据进行统计处理，以下实例我们查看行数和列数：
data <- read.csv("../resources/sites.csv", encoding="UTF-8")
print(is.data.frame(data))  # 查看是否是数据框
print(ncol(data))  # 列数
print(nrow(data))  # 行数

# 以下统计数据框中 likes 字段最大对数据：
data <- read.csv("../resources/sites.csv", encoding="UTF-8")
# likes 最大的数据
like <- max(data$likes)
print(like)

# 多个条件使用 & 分隔符，以下实例查找 likes 大于 1 name 为 Runoob 的数据
data <- read.csv("../resources/sites.csv", encoding="UTF-8")

# likes 大于 1 name 为 Runoob 的数据
retval <- subset(data, likes > 1 & name=="Runoob")
print(retval)

# 保存为 CSV 文件
data <- read.csv("../resources/sites.csv", encoding="UTF-8")
# likes 为 222 的数据
retval <- subset(data, likes == 222)
# 写入新的文件
write.csv(retval, "../resources/runoob.csv")
newdata <- read.csv("../resources/runoob.csv")
print(newdata)

#X 来自数据集 newper，可以通过参数 row.names = FALSE 来删除它：
data <- read.csv("../resources/sites.csv", encoding="UTF-8")
# likes 为 222 的数据
retval <- subset(data, likes == 222)
# 写入新的文件
write.csv(retval,"../resources/runoob.csv", row.names = FALSE)
newdata <- read.csv("../resources/runoob.csv")
print(newdata)
