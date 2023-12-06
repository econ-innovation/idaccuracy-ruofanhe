#######��ϰ3###########

#��2�д����װ��Ϊһ�����������������еĽű����ű���Ψһһ������Ϊaminer�����ļ����ڵ�·��



#!/usr/bin/env Rscript



# ��������в��������Ƿ���ȷ
if (length(commandArgs(trailingOnly = TRUE)) != 1) {
  stop("Usage: ./merge_data_script.R <folder_path>")
}

# �������в����л�ȡ�ļ���·��
folder_path <- commandArgs(trailingOnly = TRUE)[1]

# ���ر�Ҫ�Ŀ�
install.packages("purrr")

if (!requireNamespace("purrr", quietly = TRUE)) {
  install.packages("purrr")
}
library(purrr)

# ��ȡ�ļ��б�
file_list <- list.files(path = folder_path, full.names = TRUE)

# ʹ�� purrr �е� map_dfr ������ȡ�ļ����ϲ�����
data_list <- lapply(file_list, function(file_path) {
  current_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")
  selected_columns <- c(1, 2, 3, 4, 5)
  current_data <- current_data[, selected_columns, drop = FALSE]
  return(current_data)
})

# ʹ�� do.call �� rbind ���������ݿ�ϲ���һ��
merged_data <- do.call(rbind, data_list)

# ��ʾ�ϲ�������ݿ�
print(merged_data)

