#1.1
# in Python
# my_list = [1,2,3]
# first_element = my_list[0]
# print(first_element)

# in R
vector <- c(1, 2, 3)
first_element <- vector[1]
print(first_element)

#1.2
# in Python
# my_list = [1,2,3]
# last_element = my_list[-1]
# print(last_element)

my_vector <- c(10, 20, 30, 40, 50)
last_element <- my_vector[length(my_vector)]
print(last_element)

#1.3
# in Python
# my_list = [1, 2, 3, 4, 5, 6]
# subset_list = my_list[1:5]
# print(subset_list)

# in R
my_vector <- c(10, 20, 30, 40, 50, 60)
subset_vector <- my_vector[2:5]
print(subset_vector)

#1.4
# in Python
# import pandas as pd
#
# data = {'A': [1, 2, 3], 'B': [4, 5, 6], 'C': [7, 8, 9]}
# df = pd.DataFrame(data)
#
# element = df.iloc[1, 2]
# print(element)

#in R
my_matrix <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)

element <- my_matrix[2, 3]
print(element)

#1.5
# in Python
#import pandas as pd

# data = {'A': [1, 2, 3], 'B': [4, 5, 6], 'C': [7, 8, 9]}
# df = pd.DataFrame(data)
# second_row = df.iloc[1, :]
# print(second_row)

# in R
my_matrix <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
second_row <- my_matrix[2,]
print(second_row)


#2.1
int_var <- 10
print(int_var)
print(str(int_var))

float_var <- as.numeric(int_var)
print(float_var)
print(str(float_var))

int_var_again <- as.integer(float_var)
print(int_var_again)
print(str(int_var_again))

#2.2
string_var <- "Capybara"
print(string_var)

print(str(string_var))

#2.3
string_var1 <- "Capy"
string_var2 <- "bara"

combined_string <- paste(string_var1, string_var2)
print(combined_string)

#2.4
logical_var1 <- TRUE
logical_var2 <- FALSE

or_result <- logical_var1 | logical_var2
print(or_result)

and_result <- logical_var1 & logical_var2
print(and_result)

#3
numeric_vector <- c(10.2, 8.9, 12.5, 9.8, 15.3)

#3.1
average_value <- mean(numeric_vector)
print(average_value)

#3.2
difference <- max(numeric_vector) - min(numeric_vector)
print(difference)

#3.3
count_values <- sum(numeric_vector > 10 & numeric_vector <= 14)
print(count_values)

#---
text_vector <- c("R", "Bioinformatics", "DNA")

#3.4
char_count <- nchar(text_vector)
print(char_count)

#3.5
sorted_desc <- sort(text_vector, decreasing = TRUE)
print(sorted_desc)

#3.6
sorted_asc <- sort(text_vector)
print(sorted_asc)

#---
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

#3.7
true_indices <- which(logical_vector)
print(true_indices)

#3.8
negated_vector <- !logical_vector
print(negated_vector)

#4.1
set.seed(123)
Expression <- matrix(runif(12, 1, 10), nrow = 3, ncol = 4)
print(Expression)

#4.2
rownames(Expression) <- c("Gene1", "Gene2", "Gene3")
colnames(Expression) <- c("Sample1", "Sample2", "Sample3", "Sample4")
print(Expression)

#4.3
gene_averages <- rowMeans(Expression)
print(gene_averages)

#4.4
sample_means <- colMeans(Expression)
print(sample_means)

#4.5
ExpressionT <- t(Expression)
print(ExpressionT)

#4.6
sample1_sample3_data <- Expression[, c("Sample1", "Sample3")]
print(sample1_sample3_data)

#5
df <- data.frame(
  ID = 1:5,
  Age = c(25, 34, 28, 52, 40),
  Sex = c("Female", "Male", "Female", "Male", "Female"),
  Height = c(165, 180, 170, 175, 168),
  Weight = c(60, 80, 65, 75, 58),
  Health_status = c("Good", "Average", "Good", "Bad", "Good")
)
print(df)

# 5.1
print(str(df))
print(head(df, 3))

# 5.2
average_age <- mean(df$Age)
print(average_age)

# 5.3
filtered_patients <- subset(df, Health_status == "Good" & Sex == "Female")
print(filtered_patients)

# 5.4
sorted_df <- df[order(-df$Age),]
print(sorted_df)

# 5.5
max_height <- max(df$Height)
print(max_height)

min_height <- min(df$Height)
print(min_height)

#6.1
BMI_calc <- function(weight, height) {
  height_in_meters <- height / 100
  BMI <- weight / (height_in_meters^2)
  return(BMI)
}

example_BMI <- BMI_calc(60, 165)
print(example_BMI)

#6.2
df <- data.frame(
  ID = 1:5,
  Age = c(25, 34, 28, 52, 40),
  Sex = c("Female", "Male", "Female", "Male", "Female"),
  Height = c(165, 180, 170, 175, 168),
  Weight = c(60, 80, 65, 75, 58),
  Health_status = c("Good", "Average", "Good", "Bad", "Good")
)

df$BMI <- mapply(BMI_calc, df$Weight, df$Height)
print(df)

#7
bio_list <- list(
  DNA_sequences = c("ATGCCTGAC", "GTCAGTCAG", "CTGATCGATGCTA"),
  species = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
  gene_expression = matrix(runif(9, 0, 100), nrow = 3),
  morphological_features = data.frame(
    Species = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
    Height = c(170, 10, 0.1),
    Weight = c(70, 0.02, 0.0002)
  ),
  mutations = list(Homo_sapiens = c("BRCA1", "BRCA2"), Mus_musculus = "p53")
)

#7.1
print(str(bio_list))

#7.2
print(bio_list$species)

#7.3
bio_list$DNA_sequences <- c(bio_list$DNA_sequences, "CGATGTAGCTA")
print(bio_list$DNA_sequences)

#7.4
average_gene_expression <- mean(bio_list$gene_expression)
print(average_gene_expression)

#7.5
new_species <- data.frame(
  Species = "Arabidopsis thaliana",
  Height = 0.3,
  Weight = 0.001
)
bio_list$morphological_features <- rbind(bio_list$morphological_features, new_species)
print(bio_list$morphological_features)

#7.6
print(bio_list$mutations$Homo_sapiens)

#7.7
bio_list$mutations$Mus_musculus <- c(bio_list$mutations$Mus_musculus, "Lmna")
print(bio_list$mutations$Mus_musculus)

#8.1
row_means <- apply(Expression, 1, mean)
print(row_means)

#8.2
column_means <- apply(Expression, 2, mean)
print(column_means)

#8.3
row_max <- apply(Expression, 1, max)
print(row_max)

#9
# Install the dplyr package if it's not already installed
if (!require(dplyr)) {
  install.packages("dplyr")
}
library(dplyr)

data <- read.csv("tissue_gene_expression_sample.csv")

print(head(data))

#9.2
num_rows <- nrow(data)
num_columns <- ncol(data)

print(paste("Number of rows:", num_rows))
print(paste("Number of columns:", num_columns))


#9.3
lhpp_stats <- data %>%
  summarise(min_value = min(x.LHPP, na.rm = TRUE), max_value = max(x.LHPP, na.rm = TRUE))

print(lhpp_stats)

#9.4
sorted_data_asc <- data %>%
  arrange(x.LHPP)

print(head(sorted_data_asc))

#9.5
sorted_data_desc <- data %>%
  arrange(desc(x.LHPP))

print(head(sorted_data_desc))

#9.6
filtered_data <- data %>%
  filter(x.LHPP > 14)

print(filtered_data)

#9.7
selected_columns <- data %>%
  select(x.MTF2, x.APBA1)

print(head(selected_columns))

#10.1
if (!require(ggplot2)) {
  install.packages("ggplot2")
}
library(ggplot2)

scatter_plot <- ggplot(df, aes(x = Height, y = Weight)) +
  geom_point(color = "blue", shape = 21, fill = "blue") +
  labs(
    title = "Relationship between height and weight",
    x = "Height (cm)",
    y = "Weight (kg)"
  ) +
  theme_minimal()

print(scatter_plot)

#10.2
data <- read.csv("tissue_gene_expression_sample.csv")

histogram_plot <- ggplot(data, aes(x = x.LHPP)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.7) +
  labs(
    title = "Histogram of x.LHPP Gene Expression Values",
    x = "Expression Value",
    y = "Frequency"
  ) +
  theme_minimal()

print(histogram_plot)

#10.3
box_plot <- ggplot(data, aes(x = Tissue, y = Expression, fill = Tissue)) +
  geom_boxplot() +
  ggtitle("Distributions of Gene Expression Values Between Different Tissues") +
  xlab("Tissues") +
  ylab("Gene Expression") +
  theme_minimal()


print(box_plot)








































