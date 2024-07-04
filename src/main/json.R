# R JSON 文件

# 验证是否安装了rjson包
any(grepl("rjson",installed.packages()))

# 查看数据，某一行使用 [ ], 指定的行和列使用 [[ ]]:
# 载入 rjson 包
library("rjson")
# 获取 json 数据
result <- fromJSON(file = "../resources/sites.json")
# 输出结果
print(result)
print("===============")
# 输出第 1 列的结果
print(result[1])
print("===============")
# 输出第 2 行第 2 列的结果
print(result[[2]][[2]])

# 我们也可以使用 as.data.frame() 函数将 json 文件数据可以转为数据框类型，这样我们就更方便对数据进行操作：
# 载入 rjson 包
library("rjson")
# 获取 json 数据
result <- fromJSON(file = "../resources/sites.json")
# 转为数据框
json_data_frame <- as.data.frame(result)
print(json_data_frame)
