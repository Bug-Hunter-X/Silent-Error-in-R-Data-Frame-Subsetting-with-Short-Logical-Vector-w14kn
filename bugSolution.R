```r
# Corrected code that explicitly checks the length of the logical vector
data <- data.frame(a = 1:10, b = 11:20)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

if (length(logical_vector) != nrow(data)) {
  stop("Error: Length of logical vector must match the number of rows in the data frame.")
}

subsetted_data <- data[logical_vector, ]
print(subsetted_data)
```