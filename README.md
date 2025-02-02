# R Silent Subsetting Error

This repository demonstrates a subtle bug in R related to subsetting data frames using logical vectors. When a logical vector is shorter than the number of rows in the data frame, R silently recycles the vector, leading to incorrect results without any warning or error message.  This can be a difficult bug to track down as it produces no explicit error.

The `bug.R` file contains the erroneous code, and `bugSolution.R` provides a corrected version.

## Bug Description
The issue arises when subsetting a data frame using a logical vector that's shorter than the number of rows. R silently recycles the shorter vector to match the length of the data frame, leading to unexpected and potentially erroneous results. No error message is generated to alert the user to this problem.

## Solution
The solution involves checking that the length of the logical vector is equal to the number of rows in the data frame before performing the subsetting.  If the lengths differ, an explicit error message is generated to prevent silent errors and incorrect data handling.