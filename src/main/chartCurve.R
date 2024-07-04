# R 绘图 - 函数曲线图

# 加载 ggplot2 包
library(ggplot2)

# 设置文件名，输出为 png
png(file = "../output/curve/curve-sin.png")
# 以下我们绘制一个 sin(x) 函数的图表
curve(sin(x), -2 * pi, 2 * pi);



# 在每一个 (2n+1)Pi / 2 的位置都会出现断点，但是 R 的图像将它们连接了，希望大家理解这一点。
# 当然，不是所有的函数都像 sin 一样支持向量处理，我们也可以手动生成一个数字序列然后用 plot 函数生成函数图像。假设函数 f 仅支持单个数值作为参数：
# 定义函数 f
f = function (x) {
    if (x >= 0) {
        x
    } else {
        x ^ 2
    }
}
# 生成自变量序列
x = seq(-2, 2, length=100)
# 生成因变量序列
y = rep(0, length(x))
j = 1
for (i in x) {
    y[j] = f(i)
    j = j + 1
}
png(file = "../output/curve/curve-plot.png")
# 绘制图像
plot(x, y, type='l')

# 接下来我们使用 plot() 函数对向量数据进行绘图：
# 向量数据
v <- c(7,12,28,3,41)
# 生成图片
png(file = "../output/curve/curve-line_chart_label_colored.jpg")
# 绘图、线图颜色为红色，main 参数用于设置标题
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
   main = "Rain fall chart")