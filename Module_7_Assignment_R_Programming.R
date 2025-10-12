#load the dataset
data("mtcars")

#Look at the first few rows
head(mtcars)

# Check the structure 
str(mtcars)

# Get a summary of the dataset
summary(mtcars)

#Lets make a quick plot
plot(mtcars$hp, mtcars$mpg,
     main = "Horsepower vs. MPG",
     xlab = "Horsepower",
     ylab = "Miles per Gallon",
     col = "steelblue", pch = 19)

# Create an S3 object
s3_obj <- list(name = "Carolina", age = 21, GPA = 3.8)
class(s3_obj) <- "student_s3"

# Define a simple print method for it
print.student_s3 <- function(x) {
  cat("Student Name:", x$name, "\nAge:", x$age, "\nGPA:", x$GPA, "\n")
}

# Test it
print(s3_obj)

# Create an S4 class
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))

# Create an object from that class
s4_obj <- new("student_s4", name = "Carolina", age = 21, GPA = 3.8)

# Define a print method for it
setMethod("show", "student_s4", function(object) {
  cat("Student Name:", object@name, "\nAge:", object@age, "\nGPA:", object@GPA, "\n")
})

# Test the method
s4_obj
