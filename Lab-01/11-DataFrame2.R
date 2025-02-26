# Tạo dataframe
set1 <- data.frame(IdClient = c(1:6, 8), Product = c(rep("Thit Kho", 4), rep("Ca Kho", 3)))
set2 <- data.frame(IdClient = c(1,2,5,9), Region = c(rep("TP. HCM", 3), "Dong Nai"))

# Gộp dữ liệu - các phép Join
# Inner Join: merge # Lấy phần chung
set3 <- merge(set1, set2)
set3

# Outer Join # Gộp tất cả
set4 <- merge(x=set1, y=set2, by = "IdClient", all=TRUE)
set4

# Left Join (ưu tiên bảng bên trái)
set5 <-merge(x=set1, y=set2, by="IdClient", all.x = TRUE)
set5

# Right Join (ưu tiên bảng bên phải)
set6 <-merge(x=set1, y=set2, by="IdClient", all.y = TRUE)
set6


# Chuyên vị dữ liệu (Transposing data)
t(set1)

ten <- 1:10
t(ten)

# Sắp xếp
# Sắp xếp chỉ sổ
set1[1:7, ]
set1[7:1, ]

# Sắp xếp theo giá trị
sort(set1$IdClient) # Sắp xếp tăng
sort(set1$IdClient, decreasing = TRUE) # Sắp xếp giảm

set1[order(set1$IdClient),]
set1[order(set1$Product),]
set1[order(set1$IdClient, decreasing = TRUE),]

# Lọc dữ liệu / Filter
set1[2,]
set1[2,2]
set1[,2]

# Lọc theo điều kiện
set1[set1$Product=="Ca Kho",]
set1[set1$Product=="Thit Kho",]


set1[set1$Product=="Ca Kho" & set1$IdClient>6,]

set1[set1$Product=="Ca Kho" | set1$IdClient>3,]


# Lấy ra set con
setA <- set1[set1$Product=="Ca Kho",]
setB <- subset(set1, Product=="Thit Kho")

# Làm việc với dữ liệu phân loại factor
set4$Product <- as.factor(set4$Product)
set4$Region <- as.factor(set4$Region)

summary(set4)

set4

# Xu ly du lieu thieu
is.na(set4$Product)

set4[is.na(set4$Product),]
set4[is.na(set4$Region),]

# Điền giá trị bị thiếu
set4$Region <- as.character(set4$Region)
set4[is.na(set4$Region),"Region"]<- "Viet Nam"
set4$Region <- as.factor(set4$Region)
set4

# Sử dụng complete.cases
setMissing = data.frame(
  IdClient = c(1:10), 
  Region = c(rep("western", 2), rep(NA, 2), rep("eastern", 1), rep(NA, 5)),
  Wages = c(seq(2000, 3500, 500), NA, seq(4000, 5000, 500), rep(NA, 2))
)
