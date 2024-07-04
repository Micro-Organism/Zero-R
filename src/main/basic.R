# 基础运算

# 向左赋值
v1 <- c(3,1,TRUE,"runoob");
v2 <<- c(3,1,TRUE,"runoob");
v3 = c(3,1,TRUE,"runoob");
print(v1);
print(v2);
print(v3);

# 向右赋值
c(3,1,TRUE,"runoob") -> v1;
c(3,1,TRUE,"runoob") ->> v2;
print(v1);
print(v2);

# 1 到 10 的向量
v <- 1:10;
print(v);

# 判断数字是否在向量 v 中
v1 <- 3;
v2 <- 15;
print(v1 %in% v);
print(v2 %in% v);

# 矩阵与它转置的矩阵相乘
M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE);
t = M %*% t(M);
print(t);

# 数学函数
print(log(10));
print(sqrt(4));
print(abs(-10));
print(floor(10.6));
print(ceiling(10.6));
print(exp(1));
print(sin(0));
print(cos(0));
print(tan(0));
print(round(1.5));
print(asin(0.5));
print(acos(0.5));
print(atan(0.5));
print(dnorm(0));
print(pnorm(0));
print(rnorm(0,1));


# 逻辑函数
print(all(c(TRUE,TRUE,TRUE)));
print(any(c(TRUE,TRUE,TRUE)));
print(sum(c(TRUE,TRUE,TRUE)));
print(prod(c(TRUE,TRUE,TRUE)));
print(min(c(TRUE,TRUE,TRUE)));
print(max(c(TRUE,TRUE,TRUE)));

# 字符串函数
s1 = "hello";
s2 = "world";
print(paste(s1,s2));
print(paste(s1," ",s2));
print(paste(s1," ",s2,sep=""));
print(nchar(s1));
print(substr(s1,2,4));

# 列表函数