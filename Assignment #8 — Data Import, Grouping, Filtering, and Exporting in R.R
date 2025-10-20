# Step 1: Import the dataset
student6 <- read.csv("C:/Users/suvan/Downloads/Assignment 6 Dataset.txt", header = TRUE, stringsAsFactors = FALSE)

# Check column names to make sure everything loaded right
colnames(student6)
head(student6)

# Step 2: Load plyr and compute mean grade by sex
library(plyr)

gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

print(gender_mean)

# Export the grouped means to a text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep = "\t",
  row.names = FALSE
)

# Step 3: Filter names that contain "i" or "I"
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

# Save just the names to a CSV
write.csv(
  i_students$Name,
  file = "i_students.csv",
  row.names = FALSE,
  quote = FALSE
)

# Step 4: Export the full filtered dataset
write.csv(
  i_students,
  file = "i_students_full.csv",
  row.names = FALSE
)

# Confirm the files exist
list.files(pattern = "gender_mean|i_students")
