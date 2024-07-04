# script.R

# R code goes here
x <- 1:10;
y <- x^2;
print(y);

# Assign a string to a variable
myString <- "Hello, World!";
print ( myString );

# 使用等号 = 号赋值

var.1 = c(0,1,2,3);
print(var.1);

# 使用左箭头 <-赋值
var.2 <- c("learn","R");
print(var.2);

# 使用右箭头 -> 赋值
c(TRUE,1) -> var.3;
print(var.3);

# print() 输出
print("Hello, World!");
# 如果需要输出结果的拼接，我们可以使用 cat() 函数
cat(1, "加", 1, "等于", 2, '\n');
# sink() 函数可以把控制台输出的文字直接输出到文件中去
sink("output.txt", split=TRUE);  # 控制台同样输出
cat("Hello, World!");
sink();

sink("output.txt", append=TRUE); # 控制台不输出，追加写入文件
print("RU NOOB");
sink();

# 文字输入
# 从文件读入文字
readLines("output.txt");

# 对于文件操作，我们需要设置文件的路径，R 语言可以通过以下两个行数来获取和设置当前的工作目录：
# getwd() : 获取当前工作目录
# setwd() : 设置当前工作目录

# 当前工作目录
print(getwd())
# 设置当前工作目录
setwd("/test")
# 查看当前工作目录
print(getwd())