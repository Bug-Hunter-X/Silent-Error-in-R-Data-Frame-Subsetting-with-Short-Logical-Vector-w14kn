```r
# This code attempts to subset a data frame using a logical vector that is shorter than the number of rows.
# This will cause a silent error, where only the first few rows are correctly subsetted.
data <- data.frame(a = 1:10, b = 11:20)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
subsetted_data <- data[logical_vector, ]
print(subsetted_data)
```