
###########练习1###########

#使用R中使用R中的数据读写，文件路径，for循环语句，
#读入路径“/assignment_idaccuracy/Aminer”总的所有文件，
#并将数据合并成为一个data.frame输出。
#要求data.frame中至少要包括论文的doi号，发表年份，杂志，标题；



# 设置文件夹路径
folder_path <- "C:/Users/hrf/Desktop/史东波老师-应用经济学数据分析/three/Aminer"

# 获取文件列表
file_list <- list.files(path = folder_path, full.names = TRUE)

# 初始化一个空的数据框
merged_data <- data.frame()

# 使用for循环读取并合并数据
for (file_path in file_list) {
# 读取CSV文件
  current_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")
  
# 提取所需的列
  selected_columns <- c(1, 2, 3, 4,5)
  current_data <- current_data[, selected_columns, drop = FALSE]
  
# 将当前数据合并到总数据框
  merged_data <- rbind(merged_data, current_data)
}

# 显示合并后的数据框
print(merged_data)







