

#######练习2###########

#使用apply家族函数替代上述步骤中的for循环


# 设置文件夹路径
folder_path <- "C:/Users/hrf/Desktop/史东波老师-应用经济学数据分析/three/Aminer"

# 获取文件列表
file_list <- list.files(path = folder_path, full.names = TRUE)

# 使用lapply读取文件并提取所需的列
data_list <- lapply(file_list, function(file_path) {
  current_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")
  selected_columns <- c(1, 2, 3, 4,5)
  current_data <- current_data[, selected_columns, drop = FALSE]
  return(current_data)
})

# 使用do.call和rbind将所有数据框合并成一个
merged_data <- do.call(rbind, data_list)

# 显示合并后的数据框
print(merged_data)



