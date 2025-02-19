# Matrix là gì?
# Matrix (ma trận) là cấu trúc dữ liệu 2 chiều trong R
# Chứa các phần tử cùng kiểu dữ liệu (numeric, character, logical)
# Được sắp xếp theo hàng (rows) và cột (columns)

# Tạo matrix từ vector
# Cách 1: chỉ định số hàng, số cột:

mat1 <- matrix(1:6, nrow = 2, ncol = 3)
mat1

# Cách 2: chỉ định cách điền (byrow)
mat2 <- matrix(1:6, ncol=3, byrow = TRUE)
mat2

# Tạo matrix rỗng:
empty_mat <- matrix(NA, nrow = 3, ncol = 5)
empty_mat

# Tạo matrix 0:
zero_mat <- matrix(0, nrow = 3, ncol = 3)
zero_mat 

# Ví dụ:

# Bảng điểm
grades <-matrix(
          c(
            8.5, 9, 7.5, 8.8, 
            9.2, 7.8, 8.5, 9.0, 
            7.6, 8.2, 8.9, 8.5
          ),
          nrow = 3,
          ncol = 4,
          byrow = TRUE
)
grades

rownames(grades) <- c("Le Nhat Tung", "Nguyen Van A", "Le Thi C")
colnames(grades) <- c("Toán", "Văn", "Anh", "Tin")
grades

# Dữ liệu bán hàng theo tháng
sales <- matrix(
  c(150, 200, 180,
    120, 160, 140,
    180, 220, 200),
  nrow = 3,
  ncol = 3,
  byrow = TRUE,
  dimnames = list(
    c("SP1", "SP2", "SP3"),
    c("T1", "T2", "T3")
  )
)
