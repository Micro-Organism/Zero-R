# R语言绘制饼图

# 简单饼图
# 数据准备
info = c(1, 2, 4, 8);
# 命名
names = c("Google", "Runoob", "Taobao", "Weibo");
# 涂色（可选）
cols = c("#ED1C24","#22B14C","#FFC90E","#3f48CC");
# 设置输出图片 我们也可以使用 png()、jpeg()、bmp() 函数设置输出的文件格式为图片：
png(file='../output/pie/pie-simple.png', height=300, width=300);
# 绘图
pie(info, labels=names, col=cols);

# 数据准备
info = c(1, 2, 4, 8);
# 命名
names = c("Google", "Runoob", "Taobao", "Weibo");
# 涂色（可选）
cols = c("#ED1C24","#22B14C","#FFC90E","#3f48CC");
# 设置输出图片
pdf(file = "../output/pie/pie-pdf.pdf");
# 计算百分比
piepercent = paste(round(100*info/sum(info)), "%")
# 绘图
pie(info, labels=piepercent, main = "网站分析", col=cols, family='GB1');
# 添加颜色样本标注
legend("topright", names, cex=0.8, fill=cols);

# 如果要绘制 3D 的饼图，可以使用 plotrix 库的 pie3D() 函数，使用前我们需要先安装：
# install.packages("plotrix", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# 载入 plotrix
library(plotrix);
# 数据准备
info = c(1, 2, 4, 8);
# 命名
names = c("Google", "Runoob", "Taobao", "Weibo");
# 涂色（可选）
cols = c("#ED1C24","#22B14C","#FFC90E","#3f48CC");
# 设置文件名，输出为 png
png(file = "../output/pie/pie-3d.png", height=500, width=500);
# 绘制 3D 图，family 要设置你系统支持的中文字体库
pie3D(info,labels = names,explode = 0.1, main = "3D 图",family = "STHeitiTC-Light")