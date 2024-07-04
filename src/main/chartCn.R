# R语言-中文支持
library(sysfonts);
library(showtextdb);
library(ggplot2);

# # 假设你的字体文件名为my_font.ttf，放置在"C:/my_fonts"目录下
# font_register("/Library/Fonts/Arial Unicode.ttf", prompt = FALSE)

# 柱形图使用字体库：
# 载入 showtext
library(showtext);
# 第一个参数设置字体名称，第二个参数为字体库路径，同目录下，我们写字体库名就可以了
sysfonts::font_add("SyHei", "../font/SourceHanSansSC-Bold.otf");
# 设置文件名，输出为 png
png(file = "../output/cn/cn-bar.png")
cvd19 = c(83534,2640626,585493)
#加载字体
showtext_begin();
barplot(cvd19,
    main="新冠疫情条形图",
    col=c("#ED1C24","#22B14C","#FFC90E"),
    names.arg=c("中国","美国","印度"),
    family='SyHei'     # 设置字体库
)
# 去掉字体
showtext_end();
# 关闭图形设备
dev.off();


# 3D 饼图使用中文：
library(plotrix)
library(showtext);
# 第一个参数设置字体名称，第二个参数为字体库路径，同目录下，我们写字体库名就可以了
font_add("SyHei", "../font/SourceHanSansSC-Bold.otf");
# 数据准备
info = c(1, 2, 4, 8)
# 命名
names = c("Google", "Runoob", "Taobao", "Weibo")
# 涂色（可选）
cols = c("#ED1C24","#22B14C","#FFC90E","#3f48CC")
# 设置文件名，输出为 png
png(file = "../output/cn/cn-pie3D.png")
#加载字体
showtext_begin();
# 绘制 3D 图
pie3D(info,labels = names,explode = 0.1, main = "我测试一下 SyHei 字体",family = "SyHei")
# 去掉字体
showtext_end();
# 关闭图形设备
dev.off();