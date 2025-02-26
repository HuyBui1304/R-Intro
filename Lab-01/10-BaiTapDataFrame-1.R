# # Nhiệm vụ
# # 1. Tạo và thêm tên duy nhất vào năm vector có độ dài 8. 
# Làm cho các kiểu dữ liệu của chúng đa dạng. 
# Tạo một dataframe có tên "mySet1" từ các vector đã tạo.
# # a) Hiển thị dòng thứ 5 của dataframe đã tạo.
# # b) Thay đổi tên của cột thứ hai của dataframe 
# mySet1 thành "column02"
# # c) Hiển thị 7 dòng đầu tiên của dataframe mySet1. 
# Sử dụng hai phương pháp khác nhau - với chỉ số và với một hàm.

vector1 <- 1:8 # vector số nguyên
vector2 <- seq(0, 1, length.out=8) # vector số thực
vector3 <- c(T, F,T,T, F,T,F,F)
vector4 <- c("A", "B", "C", "D", "E", "F", "G", "H")
vector5 <- as.factor(c("Thấp", "Cao", "Trung Bình", "Cao", "Cao", "Thấp", "Thấp", "Trung Bình"));

# Tạo dataframe
mySet1 <- data.frame(vector1, vector2, vector3, vector4, vector5);
mySet1[5, ]

colnames(mySet1)[2]<-"column2"

mySet1[1:7,]

head(mySet1, 7)

# 2. Sử dụng bộ dữ liệu iris. 
# Sử dụng chỉ số để hiển thị giá trị của mỗi 
# dòng thứ 3 giữa quan sát thứ 40 và 120.
# Cố gắng sử dụng một dòng lệnh duy nhất 
# (rút gọn mã để nó vừa trong một dòng duy nhất, 
# không có bất kỳ bước trung gian nào).
iris
iris[seq(40, 120,3),]

# 3. Sử dụng bộ dữ liệu có sẵn "women".
# a) Thay đổi kiểu của cột đầu tiên thành kiểu ký tự.
# b) Thêm hai dòng mới vào bộ dữ liệu với các số tự tạo. Đảm bảo rằng bạn không làm mất các kiểu của biến trong dataframe chính trong quá trình này.
# c) Thêm biến mới vào bộ dữ liệu và đặt tên là "shoe_size". Sử dụng hàm runif để tạo các giá trị cho biến này. Kích thước giày phải là số nguyên giữa 35 và 42.
View(women)
women$height <- as.character(women$height)
str(women)

new_rows <- data.frame(
  height = as.character(c(70, 71)),
  weight = c(165, 168)
)

women <- rbind(women, new_rows)
women
