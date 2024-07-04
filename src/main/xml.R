# R XML 文件

# 检查 XML 包是否已安装
any(grepl("XML",installed.packages()))

# 载入 XML 包
library("XML")
# 设置文件名
result <- xmlParse(file = "../resources/sites.xml")
# 输出结果
print(result)


# 统计数据量
# 载入 XML 包
library("XML")
# 设置文件名
result <- xmlParse(file = "../resources/sites.xml")
# 提取根节点
rootnode <- xmlRoot(result)
# 统计数据量
rootsize <- xmlSize(rootnode)
# 输出结果
print(rootsize)

#查看节点数据，某一行使用 [ ], 指定的行和列使用 [[ ]]:
# 载入 XML 包
library("XML")
# 设置文件名
result <- xmlParse(file = "../resources/sites.xml")
# 提取根节点
rootnode <- xmlRoot(result)
# 查看第 2 个节点数据
print(rootnode[2])
# 查看第 2 个节点的第  1 个数据
print(rootnode[[2]][[1]])
# 查看第 2 个节点的第 3 个数据
print(rootnode[[2]][[3]])

#XML 转为数据列表
#以上代码对输出都是 xml 格式，我们使用 xmlToList() 函数可以将文件对数据转为列表格式，更方便读取
# 载入 XML 包
library("XML")
# 设置文件名
result <- xmlParse(file = "../resources/sites.xml")
# 转为列表
xml_data <- xmlToList(result)
print(xml_data)
print("============================")
# 输出第一行第二列的数据
print(xml_data[[1]][[2]])

#XML 转为数据框
#XML 文件数据可以转为数据框类型，这样我们就更方便对数据进行操作：
# 载入 XML 包
library("XML")
# xml 文件数据转为数据框
xmldataframe <- xmlToDataFrame("../resources/sites.xml")
print(xmldataframe)