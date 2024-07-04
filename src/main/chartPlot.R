# R 绘图 - 散点图

# 创建一个简单的线图
x<-c(10,40);
y<-c(20,60);
# 生成 png 图片
png(file = "../output/plot/plot-l.png");
# 画图
plot(x, y, "l");

# 创建一个简单的线图，type 使用 o 参数，同时绘制点和线，且线穿过点
x<-c(10,40);
y<-c(20,60);
# 生成 png 图片
png(file = "../output/plot/plot-o.png");
# 画图
plot(x, y, "o");

# 我们使用 mtcars 数据集的 wt 和 mpg 列, 接着我们使用以上数据生存一个散点图
# 数据
input <- mtcars[,c('wt','mpg')];
# 生成 png 图片
png(file = "../output/plot/plot-scatter.png");
# 设置坐标 x 轴范围 2.5 到 5, y 轴范围 15 到 30.
plot(x = input$wt,y = input$mpg,
   xlab = "Weight",
   ylab = "Milage",
   xlim = c(2.5,5),
   ylim = c(15,30),
   main = "Weight vs Milage"
);

# 散点图矩阵是借助两变量散点图的作图方法
# 输出图片
png(file = "../output/plot/plot-scatter-matrices.png");
# 4 个变量绘制矩阵，12 个图
pairs(~wt+mpg+disp+cyl,data = mtcars, main = "Scatterplot Matrix");
