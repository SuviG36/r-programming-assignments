#Load Dataset
data("iris")
head(iris)

# Scatter plot of Sepal.Length vs Sepal.Width
plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Base R: Sepal Length vs Width",
     xlab = "Sepal Length (cm)",
     ylab = "Sepal Width (cm)",
     col = iris$Species,
     pch = 19)

# Add legend for species
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19)

# Histogram of Petal.Length
hist(iris$Petal.Length,
     main = "Base R: Petal Length Distribution",
     xlab = "Petal Length (cm)",
     col = "skyblue",
     border = "white")


# Load lattice library
library(lattice)

# Scatter plot by species
xyplot(Sepal.Width ~ Sepal.Length | Species,
       data = iris,
       main = "Lattice: Sepal Width vs Length by Species",
       layout = c(3, 1),
       pch = 16,
       col = "steelblue")

# Boxplot of Petal.Length by Species
bwplot(Petal.Length ~ Species,
       data = iris,
       main = "Lattice: Petal Length by Species",
       col = "lightgreen")

# Load ggplot2
library(ggplot2)

# Scatter plot with regression lines
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: Sepal Dimensions by Species",
       x = "Sepal Length (cm)",
       y = "Sepal Width (cm)") +
  theme_minimal()

# Faceted histogram for Petal.Length
ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_histogram(color = "white", bins = 15) +
  facet_wrap(~ Species) +
  labs(title = "ggplot2: Petal Length Distribution by Species",
       x = "Petal Length (cm)",
       y = "Count") +
  theme_minimal()

