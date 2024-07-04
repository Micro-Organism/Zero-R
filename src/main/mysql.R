# R MySQL 连接
library(DBI)

# 验证mysql包是否安装
any(grepl("RMySQL",installed.packages()))
# any(grepl("RMariaDB",installed.packages()))

# 使用 RMySQL 包来读取数据
library(RMySQL)
# dbname 为数据库名，这边的参数请根据自己实际情况填写
mysqlconnection = dbConnect(MySQL(), user = 'root', password = 'root@123', dbname = 'test',host = 'localhost')
# 查看数据
dbListTables(mysqlconnection)



#使用 dbSendQuery 来读取数据库的表，结果集通过 fetch() 函数来获取
library(RMySQL)
# 查询 sites 表，增删改查操作可以通过第二个参数的 SQL 语句来实现
result = dbSendQuery(mysqlconnection, "select * from sites")
# 获取前面两行数据
data.frame = fetch(result, n = 2)
print(data.frame)