

#######��ϰ2###########

#ʹ��apply���庯��������������е�forѭ��


# �����ļ���·��
folder_path <- "C:/Users/hrf/Desktop/ʷ������ʦ-Ӧ�þ���ѧ���ݷ���/three/Aminer"

# ��ȡ�ļ��б�
file_list <- list.files(path = folder_path, full.names = TRUE)

# ʹ��lapply��ȡ�ļ�����ȡ�������
data_list <- lapply(file_list, function(file_path) {
  current_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")
  selected_columns <- c(1, 2, 3, 4,5)
  current_data <- current_data[, selected_columns, drop = FALSE]
  return(current_data)
})

# ʹ��do.call��rbind���������ݿ�ϲ���һ��
merged_data <- do.call(rbind, data_list)

# ��ʾ�ϲ�������ݿ�
print(merged_data)


