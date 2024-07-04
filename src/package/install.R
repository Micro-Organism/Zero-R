# R语言安装包
#Rtools不能通过常规install.packages()命令进行安装，需要通过installr包进行安装
# install.packages("installr");
# #依赖包
# install.packages("stringr");
library(stringr);
library(installr);
install.Rtools();

# 安装DBI包
install.packages("DBI", repos = "https://mirrors.ustc.edu.cn/CRAN/")

# 安装xlsx包
install.packages("xlsx", repos = "https://mirrors.ustc.edu.cn/CRAN/")

# 安装XML包
install.packages("XML", repos = "https://mirrors.ustc.edu.cn/CRAN/")

# 安装rjson包
install.packages("rjson", repos = "https://mirrors.ustc.edu.cn/CRAN/")

# 安装RMySQL包
install.packages("RMySQL", repos = "https://mirrors.ustc.edu.cn/CRAN/")

# 安装RMariaDB包
install.packages("RMariaDB", repos = "https://mirrors.ustc.edu.cn/CRAN/")

# install.packages("pkgbuild", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# pkgbuild::find_rtools(debug = TRUE);

# # 安装waffle包
# install.packages("waffle", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 安装tidyverse包
# install.packages("tidyverse", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 安装字体
# install.packages("sysfonts", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 安装字体数据库
# install.packages("showtextdb", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 安装一个包，比如 showtext
# install.packages("showtext", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 安装额外的字体支持包
# install.packages("extrafont", repos = "https://mirrors.ustc.edu.cn/CRAN/");
# # 安装额外的字体支持包
# install.packages("extrafontdb", repos = "http://cran.rstudio.com/");
# # 安装并加载ggplot2包
# install.packages("ggplot2", repos = "https://mirrors.ustc.edu.cn/CRAN/");

# 如果要绘制 3D 的饼图，可以使用 plotrix 库的 pie3D() 函数，使用前我们需要先安装：
# install.packages("plotrix", repos = "https://mirrors.ustc.edu.cn/CRAN/");