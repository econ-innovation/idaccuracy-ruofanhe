
###########��ϰ1###########

#ʹ��R��ʹ��R�е����ݶ�д���ļ�·����forѭ����䣬
#����·����/assignment_idaccuracy/Aminer���ܵ������ļ���
#�������ݺϲ���Ϊһ��data.frame�����
#Ҫ��data.frame������Ҫ�������ĵ�doi�ţ�������ݣ���־�����⣻



# �����ļ���·��
folder_path <- "C:/Users/hrf/Desktop/ʷ������ʦ-Ӧ�þ���ѧ���ݷ���/three/Aminer"

# ��ȡ�ļ��б�
file_list <- list.files(path = folder_path, full.names = TRUE)

# ��ʼ��һ���յ����ݿ�
merged_data <- data.frame()

# ʹ��forѭ����ȡ���ϲ�����
for (file_path in file_list) {
# ��ȡCSV�ļ�
  current_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")
  
# ��ȡ�������
  selected_columns <- c(1, 2, 3, 4,5)
  current_data <- current_data[, selected_columns, drop = FALSE]
  
# ����ǰ���ݺϲ��������ݿ�
  merged_data <- rbind(merged_data, current_data)
}

# ��ʾ�ϲ�������ݿ�
print(merged_data)






