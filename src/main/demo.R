# # R语言
# # readLines("output.txt");
#
# library(ggplot2)
# library(waffle)
# library(extrafont)
# library(tidyverse)
# library(echarts4r)
# library(echarts4r.assets)
# install.packages("extrafontdb", repos = "http://cran.rstudio.com/")
# library(extrafont)
#
# #//region
# #font download: https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-webfont.ttf
# extrafont::font_import (path="C:/file/location/Documents/R", pattern = "awesome", prompt = FALSE)
# install_fa_fonts()
# extrafont::font_import (path="C:/Users/User/Documents/R/win-library/4.0/waffle/fonts") #path is where R installs file:
# loadfonts(device = "win") #loads in fonts
# fonts()[grep("Awesome", fonts())] # should say Awesome fonts 5 in installed.
# waffle(
#   c(`Poor=10` =10, `Average=18` = 18, `Excellent=7` =7), rows = 5, colors = c("#FD6F6F", "#93FB98", "#D5D9DD"),
#   use_glyph = "female", glyph_size = 12 ,title = 'Girls Performance', legend_pos="bottom"
# )
# #//endregion
#
# #//region
# # 创建数据
# x <- seq(-5, 5, length.out = 100)
# y <- sin(x)
#
# # 绘图
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)")
#
# # 添加标题
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function")
#
# # 添加图例
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue"))
#
# # 添加网格线
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue")) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25))
#
# # 添加坐标轴标签
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue")) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25)) +
#
#   labs(x = expression(x), y = expression(sin(x)))
#
# # 添加图例和坐标轴标签
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue")) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25)) +
#
#   labs(x = expression(x), y = expression(sin(x))) +
#   scale_x_continuous(breaks = seq(-5, 5, by = 1)) +
#   scale_y_continuous(breaks = seq(-1, 1, by = 0.2))
#
# # 添加图例和坐标轴标签，并设置坐标轴范围
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue")) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25)) +
#
#   labs(x = expression(x), y = expression(sin(x))) +
#   scale_x_continuous(breaks = seq(-5, 5, by = 1), limits = c(-5.5, 5.5)) +
#   scale_y_continuous(breaks = seq(-1, 1, by = 0.2), limits = c(-1.2, 1.2))
#
# # 添加图例和坐标轴标签，并设置坐标轴范围，并添加网格线
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue")) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25)) +
#
#   labs(x = expression(x), y = expression(sin(x))) +
#   scale_x_continuous(breaks = seq(-5, 5, by = 1), limits = c(-5.5, 5.5)) +
#   scale_y_continuous(breaks = seq(-1, 1, by = 0.2), limits = c(-1.2, 1.2)) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25))
#
# # 添加图例和坐标轴标签，并设置坐标轴范围，添加网格线，并设置图例位置
# ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
#   geom_line() +
#   labs(x = "x", y = "sin(x)") +
#   ggtitle("Sin Function") +
#   scale_colour_manual(values = c("blue")) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25)) +
#
#   labs(x = expression(x), y = expression(sin(x))) +
#   scale_x_continuous(breaks = seq(-5, 5, by = 1), limits = c(-5.5, 5.5)) +
#   scale_y_continuous(breaks = seq(-1, 1, by = 0.2), limits = c(-1.2, 1.2)) +
#   theme(panel.grid.major = element_line(colour = "grey", size = 0.5),
#            panel.grid.minor = element_line(colour = "grey", size = 0.25)) +
#
#   legend.position = "bottom"
# #//endregion

library(sysfonts);
library(showtextdb);
library(showtext);
sysfonts::font_files()   # 查看字体