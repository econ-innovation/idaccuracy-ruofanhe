#######练习3###########

#将2中代码封装成为一个可以在命令行运行的脚本，脚本的唯一一个参数为aminer论文文件所在的路径



#!/usr/bin/env Rscript



# 检查命令行参数数量是否正确
if (length(commandArgs(trailingOnly = TRUE)) != 1) {
  stop("Usage: ./merge_data_script.R <folder_path>")
}

# 从命令行参数中获取文件夹路径
folder_path <- commandArgs(trailingOnly = TRUE)[1]

# 加载必要的库
install.packages("purrr")

if (!requireNamespace("purrr", quietly = TRUE)) {
  install.packages("purrr")
}
library(purrr)

# 获取文件列表
file_list <- list.files(path = folder_path, full.names = TRUE)

# 使用 purrr 中的 map_dfr 函数读取文件并合并数据
data_list <- lapply(file_list, function(file_path) {
  current_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")
  selected_columns <- c(1, 2, 3, 4, 5)
  current_data <- current_data[, selected_columns, drop = FALSE]
  return(current_data)
})

# 使用 do.call 和 rbind 将所有数据框合并成一个
merged_data <- do.call(rbind, data_list)

# 显示合并后的数据框
print(merged_data)


