# R绘图 条形图

# 创建简单的条形图
library(sysfonts);
library(showtextdb);


# 安装并加载ggplot2包
# install.packages("ggplot2", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# 使用包
library(ggplot2);
# 准备一个向量
cvd19 = c(83534, 2640626, 585493);
# 设置文件名，输出为 pdf
pdf(file = "../output/bar/bar-pdf.pdf");
# 显示条形图
barplot(cvd19);

# 为了更好地表达信息，我们可以在图表上添加标题、颜色及每个矩形条的名称。
# 以下我们创建 2020 年 7 月 1 日中国、美国和印度的新冠疫情确诊人数统计图。
# 中文字体需要设置字体参数 family='GB1'：
# install.packages("extrafontdb", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 加载字体
# library(extrafont);
# # 设置字体
# font_import();
# 设置字体为中文字体
cvd19 = c(83534,2640626,585493);
# 设置文件名，输出为 pdf
pdf(file = "../output/bar/bar-family.pdf");
# 设置字体为中文字体
barplot(cvd19,
    main="新冠疫情条形图",
    col=c("#ED1C24","#22B14C","#FFC90E"),
    names.arg=c("中国","美国","印度"),
    family='GB1'
);



# 设置了自己的字体库
library(showtext);
# 添加字体库
font_add("SyHei", "../font/SourceHanSansSC-Bold.otf");
# 设置矩阵
cvd19 = matrix(
  c(83017, 83534, 1794546, 2640626, 190535, 585493),
  2, 3
);
# 设置文件名，输出为 png
png(file = "../output/bar/bar-png-1.png");
#加载字体
showtext_begin();
# 设置字体为中文字体
colnames(cvd19) = c("中国", "美国", "印度");
rownames(cvd19) = c("6月", "7月");
barplot(cvd19, main = "新冠疫情条形图", beside=TRUE, legend=TRUE,  family='SyHei');
# 去掉字体
showtext_end();

# 设置自己的字体库
library(plotrix);
# 设置字体
library(showtext);
# 添加字体库
font_add("SyHei", "../font/SourceHanSansSC-Bold.otf");
# 设置矩阵
cvd19 = matrix(
  c(83017, 83534, 1794546, 2640626, 190535, 585493),
  2, 3
);
# 设置文件名，输出为 png
png(file = "../output/bar/bar-png-2.png");
#加载字体
showtext_begin();
colnames(cvd19) = c("中国", "美国", "印度");
rownames(cvd19) = c("6月", "7月");
# 绘制图形
barplot(cvd19, main = "新冠疫情条形图", beside=TRUE, legend=TRUE,col=c("blue","green"),  family='SyHei');
# 去掉字体
showtext_end();

# beside 参数
# beside 设置矩形条堆叠的方式，默认为 FALSE：
# beside=FALSE 时，条形图的高度是矩阵的数值，矩形条是水平堆叠的。
# beside=TRUE 时，条形图的高度是矩阵的数值，矩形条是并列的。
# 设置自己的字体库
library(showtext);
# 添加字体库
font_add("SyHei", "../font/SourceHanSansSC-Bold.otf");
# 设置矩阵
cvd19 = matrix(
  c(83017, 83534, 1794546, 2640626, 190535, 585493),
  2, 3
);
# 设置文件名，输出为 png
png(file = "../output/bar/bar-png-3.png");
#加载字体
showtext_begin();
colnames(cvd19) = c("中国", "美国", "印度");
rownames(cvd19) = c("6月", "7月");
# 绘制图形
barplot(cvd19, main = "新冠疫情条形图", beside=FALSE, legend=TRUE,col=c("blue","green"),  family='SyHei');
# 去掉字体
showtext_end();